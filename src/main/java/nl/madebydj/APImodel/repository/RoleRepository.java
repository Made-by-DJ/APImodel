package nl.madebydj.APImodel.repository;

import nl.madebydj.APImodel.models.ERole;
import nl.madebydj.APImodel.models.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(ERole name);
}
