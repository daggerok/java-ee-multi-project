package daggerok.ejb.api;

import daggerok.entity.Hello;

import javax.ejb.Local;
import java.util.List;
import java.util.UUID;

@Local
public interface HelloRepository {

  Hello save(final Hello hello);

  void delete(final Hello hello);

  void delete(final UUID id);

  Hello findById(final UUID id);

  Hello findOne(final UUID id);

  List<Hello> findAll();
}
