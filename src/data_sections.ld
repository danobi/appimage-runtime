SECTIONS
{

  /* 16 bytes long section filled with zeroes */
  .digest_md5 : {
    /* gaps will be filled with 0 */
    FILL(0x00);

    /* make a 15 bytes gap */
    . = . + 15;

    /* write the last byte to ensure the space is allocated */
    BYTE(0x00);
  }

  /* 1024 bytes long section filled with zeroes */
  .upd_info : {
    /* gaps will be filled with 0 */
    FILL(0x00);

    /* make a 1023 bytes gap */
    . = . + 1023;

    /* write the last byte to ensure the space is allocated */
    BYTE(0x00);
  }

  /* 1024 bytes long section filled with zeroes */
  .sha256_sig : {
    /* gaps will be filled with 0 */
    FILL(0x00);

    /* make a 1023 bytes gap */
    . = . + 1023;

    /* write the last byte to ensure the space is allocated */
    BYTE(0x00);
  }

  /* 8192 bytes long section filled with zeroes */
  .sig_key : {
    /* gaps will be filled with 0 */
    FILL(0x00);

    /* make a 8191 bytes gap */
    . = . + 8191;

    /* write the last byte to ensure the space is allocated */
    BYTE(0x00);
  }
}

/* define were the new sections will be placed */
INSERT AFTER .data;