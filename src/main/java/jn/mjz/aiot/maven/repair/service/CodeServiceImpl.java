package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.dao.CodeRepository;
import jn.mjz.aiot.maven.repair.po.Code;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author 19622
 */
@Service
public class CodeServiceImpl implements CodeService {

    private final CodeRepository codeRepository;

    public CodeServiceImpl(CodeRepository codeRepository) {
        this.codeRepository = codeRepository;
    }

    @Override
    public Code insert(Integer code) {
        Code code1 = new Code();
        code1.setCode(code);
        return codeRepository.save(code1);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Integer code) {
        codeRepository.deleteCodeByCode(code);
    }

    @Override
    public Code query(Integer code) {
        return codeRepository.findCodeByCode(code);
    }
}
