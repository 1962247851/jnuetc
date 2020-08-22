package jn.mjz.aiot.maven.repair.po;

import javax.persistence.AttributeConverter;
import java.sql.Timestamp;

/**
 * @author 19622
 */
public class TimestampLongConverter implements AttributeConverter<Long, Timestamp> {
    @Override
    public Timestamp convertToDatabaseColumn(Long attribute) {
        if (attribute == null) {
            return null;
        }
        return new Timestamp(attribute);
    }

    @Override
    public Long convertToEntityAttribute(Timestamp dbData) {
        if (dbData == null) {
            return null;
        }
        return dbData.getTime();
    }
}
