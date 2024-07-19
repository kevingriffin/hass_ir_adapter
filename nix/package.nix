{ lib, buildGoModule }:

buildGoModule {
  name = "hass_ir_adapter";
  src = lib.sourceFilesBySuffices ./.. [ ".go" ".mod" ".sum" ];
  vendorHash = "sha256-svVnbROUJqbzdFcwjZaaCECj3Uy33oOPbckcf4lsLO0=";
  subPackages = [ "." ];
  doCheck = true;
}
