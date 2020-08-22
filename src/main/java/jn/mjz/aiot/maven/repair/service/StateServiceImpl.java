package jn.mjz.aiot.maven.repair.service;


import jn.mjz.aiot.maven.repair.dao.StateRepository;
import jn.mjz.aiot.maven.repair.po.State;
import org.springframework.stereotype.Service;

/**
 * @author 19622
 */
@Service
public class StateServiceImpl implements StateService {

    private final StateRepository stateRepository;

    public StateServiceImpl(StateRepository stateRepository) {
        this.stateRepository = stateRepository;
    }

    @Override
    public State changeState(String type, Boolean available) {
        State byType = stateRepository.findByType(type);
        byType.setAvailable(available);
        return stateRepository.saveAndFlush(byType);
    }

    @Override
    public Boolean checkService(String type) {
        return stateRepository.findByType(type).getAvailable();
    }
}
