.class public Lcom/htc/content/HtcContext;
.super Ljava/lang/Object;
.source "HtcContext.java"


# static fields
.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final IMreleaseKey:Ljava/lang/String; = "3082048130820369a003020102020900c68e97bdcb5c96b9300d06092a864886f70d0101050500308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d301e170d3039303330313133343433315a170d3336303731373133343433315a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bb5a9285c16871159ce5a18007c626f34232787cfe647bc90fdd56965a6dab9256d4eadd1a0d321c1e5977df9d21fcda871e8ee811e845dcfb8478fa55bc61e1f72b88ee38ab16a63ed7361a432bc72fb8b4d544a5416960a50a244abfc5fc07bc987c3a7c9e196845aa09f38c6f28e8bd74faeaf21892e81bbe1eac717901ed9241f5d07e2c126b7968bec4ab490da9fd83ac752d0bafdbc6fd45bda6b9ada4fed07fa4b964afd3d27bfa57f902b878ac1c5b348ad60dcec522b69fbd436c9764d76d4b2b59509afdb342dc429a550cbf38c80f21b87abab57e22ed5ea79b6ca02f7b0127e2f1f5e3e615e020c7ab8a2b336342bc78388193cbeac1accba2fb020103a381ef3081ec301d0603551d0e04160414656d23a32b79700a81c079331af9a0d3ae9377093081bc0603551d230481b43081b18014656d23a32b79700a81c079331af9a0d3ae937709a1818da4818a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d820900c68e97bdcb5c96b9300c0603551d13040530030101ff300d06092a864886f70d010105050003820101005051a8f4d9e73a632c204e0a9b9dc0ab86f57b5a29c18c7b888d09df985241ca77ff2cef84de2fac5cb4d03de2d506dd8c55647de5d95345e2529a981c700b45038cc2fab68fe364cd040f43f6924aa355553d295cabb0378abc2d6fa8f8d0ef72dd02a3f2b047d26296fa7b4cd809c5255c91457b61cc77e875daaf447c757630ae92fc9ad3dc595881929c02cf4db47e67dcbb60b6877c3489484b6425ab96598be3f3838ff9ea4cb7c80f34d7f7afdd97a6b92e9a9a0ee66e6b7e593feb2d045d9c20de0a59a0e451458d8c058497d003c4289c29042af26d8933236d5ce6700ea34c6fee9775145e1ce99e9e61de9d17a9a13b8f43348672712a9e65e552"

.field private static final TAG:Ljava/lang/String; = "HtcContext"

.field private static final VMKey01:Ljava/lang/String; = "308203863082026ea00302010202044cbf70a0300d06092a864886f70d0101050500308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c652044657669636573301e170d3130313032303232343334345a170d3338303330373232343334345a308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c65204465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100c8260ec6c14a48603f722c066342b610eb723217a9feb04675f933d52babc3de9e1b4ea08e101a05acd25e4b00f0d78bd35702429a8690f52a1e7dcbac9bac35014a5ff2834860a47fdddc4a1f4fe9337d61a94315bd0c8d7d8576b9932478343a1722b355bd908378884530bcd1933903ec01eede4f614382ba5fb5a71d18833d2ea19f1670c5083936a18e851b7f8b12286003ada8cc5276d2d477ea2397187cc49354dfa0edba4c780a0c36156d1ace5dc02d873f45f452c934c9a1dcd7111904b9471909a1b437f17ca2cf87d56608e19ba4528c6698ca8eabab9894f45b60a0dccc19d52cd3b8747f9e700802a67bc44814c38cbc6cf3ebb38c8002d4770203010001300d06092a864886f70d010105050003820101002eca26340f71f65d94d931cc341e44c89dcbfdb66841e0cc9b44784e4eaa1a06e52586a6b31ddc546f6c5118fe6f84a850df4f8313a0d1ef4a528367c3a0b7f35a4d6528f6a9fd6d9482e889b5165e2ceec2f0d7248d75d03ce304a1c346ebdd2d5aee842e1d15b79eefcb9ecdf09d7f4373e3a0ad6db16c6671e0372d5d92bbf779700ee3441a48a9e563f40b4314de2306dd0b242fafcfc4e92bfa2aae4dcff49a258f908a6df6e046c2ca58d938ae523b9aaff3d39014cd02b0b88f53bdf249c13cddfd1a13148514f9e95dd3485ee64522db35e8e4142a9cc54ecf08d0aeeb646e08b841b21cdf3957288bb24568420f8ab54e62baaa270f2681df4f8c72"

.field private static final sprintKey1:Ljava/lang/String; = "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

.field private static final sprintKey2:Ljava/lang/String; = "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

.field private static final verizonKey1:Ljava/lang/String; = "30820251308201baa00302010202044a9e7fc5300d06092a864886f70d0101050500306d310b3009060355040613025553310b3009060355040813024e4a310f300d0603550407130657617272656e31193017060355040a1310566572697a6f6e20576972656c657373310c300a060355040b1303485353311730150603550403130e56696b617320426861726477616a301e170d3039303930323134323330315a170d3334303832373134323330315a306d310b3009060355040613025553310b3009060355040813024e4a310f300d0603550407130657617272656e31193017060355040a1310566572697a6f6e20576972656c657373310c300a060355040b1303485353311730150603550403130e56696b617320426861726477616a30819f300d06092a864886f70d010101050003818d0030818902818100d9ebceee62d4611d8f8ea59b67799d14b103159b5d82c8882d8085399eb67c6df2fa989f2ba139de96adbf67e72c7a7e3926e9d573b50445f2adfc7bf517055a3c2ad4b385ae60ea68341fa60f6cb03ec101e9ff269b3bef19390b8e203cc67f46a0f0b5bca98292078bce7c951dec09379c52bfde60b5ea1bef4c45989339030203010001300d06092a864886f70d010105050003818100d72768fd7956c68a7e3742441e25cac9669cb93e2c7747bc422d0ed548ff33a44bf8e58865e906d387d2c2f71e6cb200e250b69b1e88446869ade0eb16d45a96e902efe4d05e63963662eb24ee998e61c71b1bd8ca2b7cdabd547022bd76c86166bbcde19f9ce0974c6505073f26108097bf4c204dac8e692a9fb4fd438dfb07"

.field private static final verizonKey2:Ljava/lang/String; = "3082027d308201e6a00302010202044bfd9c6e300d06092a864886f70d0101050500308182310b3009060355040613025553310b3009060355040813024e4a311630140603550407130d4261736b696e6720526964676531193017060355040a1310566572697a6f6e20576972656c657373311c301a060355040b131350726f6475637420446576656c6f706d656e74311530130603550403130c446176696420416c77617264301e170d3130303532363232313035345a170d3337313031313232313035345a308182310b3009060355040613025553310b3009060355040813024e4a311630140603550407130d4261736b696e6720526964676531193017060355040a1310566572697a6f6e20576972656c657373311c301a060355040b131350726f6475637420446576656c6f706d656e74311530130603550403130c446176696420416c7761726430819f300d06092a864886f70d010101050003818d0030818902818100a45ee3f492181521473a061e15f1e5faa110bdaad1aaa4f5e32fe0b68f21e533cab467f68384e1acfa3ee103cc6e33c63e576282bf87af958121f3a432226d9c1fcdffd952520269a402f81f0d96da25c949cbc9585e3d9f295cc3a71a481018ddd97e90118918ae9e32baa3a50d9fa9c7c25b72fc555128b2949784d81415050203010001300d06092a864886f70d0101050500038181009c0a1b332c3f22235f7f82b83c0941a1b66b286a38ce36805e0857aa06a9bc41b8f55d7d38bc4a84e0194e8d648e6c4e4bf1e52df3e4e291cf5bd6e1b4b1bc0099d0299588eee053e303c5f8a5f9052d7e1b372a5d2cb77e03ad3e1a0f3e6e39ddf03ad6c3121cd49a76bec67f761286b290e17cc0388ed0422db6cb83a3332d"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callingWithPlatformOrSprintSignature(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "uid"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 182
    const/16 v3, 0x3e8

    if-eq p1, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v2

    .line 185
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 186
    .local v0, mPm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/content/pm/Signature;

    .line 187
    .local v1, matching:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/htc/content/HtcContext;->getPlatformSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v1, v4

    .line 188
    invoke-static {}, Lcom/htc/content/HtcContext;->getSprintSignature()[Landroid/content/pm/Signature;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 189
    const/4 v3, 0x2

    invoke-static {}, Lcom/htc/content/HtcContext;->getSprintSignature()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    .line 190
    invoke-static {v0, p1, v1, v2}, Lcom/htc/content/HtcContext;->checkCallingSignature(Landroid/content/pm/PackageManager;I[Landroid/content/pm/Signature;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static callingWithPlatformOrVMSignature(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "uid"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 196
    const/16 v3, 0x3e8

    if-eq p1, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 200
    .local v0, mPm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x2

    new-array v1, v3, [Landroid/content/pm/Signature;

    .line 201
    .local v1, matching:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/htc/content/HtcContext;->getPlatformSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v1, v4

    .line 202
    invoke-static {}, Lcom/htc/content/HtcContext;->getVMSignature()[Landroid/content/pm/Signature;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 203
    invoke-static {v0, p1, v1, v2}, Lcom/htc/content/HtcContext;->checkCallingSignature(Landroid/content/pm/PackageManager;I[Landroid/content/pm/Signature;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static callingWithPlatformSignature(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    .line 173
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 177
    .local v0, mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/htc/content/HtcContext;->getPlatformSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v2

    invoke-static {v0, p1, v2, v1}, Lcom/htc/content/HtcContext;->checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static callingWithVerizonSignature(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 210
    .local v0, mPm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/htc/content/HtcContext;->getVerizonSignature()[Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/htc/content/HtcContext;->checkCallingSignature(Landroid/content/pm/PackageManager;I[Landroid/content/pm/Signature;Z)Z

    move-result v1

    return v1
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z
    .locals 7
    .parameter "mPm"
    .parameter "callingUid"
    .parameter "matching"
    .parameter "delayWhenNotMatch"

    .prologue
    const/4 v5, 0x1

    .line 53
    if-nez p2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v5

    .line 56
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/content/HtcContext;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 57
    .local v1, callingSignatures:[Landroid/content/pm/Signature;
    if-eqz v1, :cond_2

    .line 58
    move-object v0, v1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 59
    .local v4, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, p2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sig:Landroid/content/pm/Signature;
    :cond_2
    if-eqz p3, :cond_3

    .line 69
    const-wide/16 v5, 0x1388

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_3
    :goto_2
    const/4 v5, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;I[Landroid/content/pm/Signature;Z)Z
    .locals 11
    .parameter "mPm"
    .parameter "callingUid"
    .parameter "matching"
    .parameter "delayWhenNotMatch"

    .prologue
    const/4 v9, 0x1

    .line 77
    if-eqz p2, :cond_0

    array-length v10, p2

    if-nez v10, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v9

    .line 80
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/content/HtcContext;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 81
    .local v2, callingSignatures:[Landroid/content/pm/Signature;
    if-eqz v2, :cond_4

    .line 82
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v0, v4

    .line 83
    .local v8, sig:Landroid/content/pm/Signature;
    move-object v1, p2

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v1, v3

    .line 84
    .local v7, matchSig:Landroid/content/pm/Signature;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 82
    .end local v7           #matchSig:Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 93
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v8           #sig:Landroid/content/pm/Signature;
    :cond_4
    if-eqz p3, :cond_5

    .line 95
    const-wide/16 v9, 0x1388

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method private static getPlatformSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 2
    .parameter "mPm"

    .prologue
    .line 103
    const/16 v1, 0x3e9

    invoke-static {p0, v1}, Lcom/htc/content/HtcContext;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 104
    .local v0, phoneSignatures:[Landroid/content/pm/Signature;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static getSprintSignature()[Landroid/content/pm/Signature;
    .locals 4

    .prologue
    .line 113
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_0

    .line 114
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 115
    .local v0, sprintSignatures:[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 116
    const/4 v1, 0x1

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 120
    :goto_0
    return-object v0

    .end local v0           #sprintSignatures:[Landroid/content/pm/Signature;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;
    .locals 4
    .parameter "mPm"
    .parameter "uid"

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, packages:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 34
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 36
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 41
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #packages:[Ljava/lang/String;
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v2

    .line 48
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getVMSignature()[Landroid/content/pm/Signature;
    .locals 4

    .prologue
    .line 127
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xab

    if-ne v1, v2, :cond_0

    .line 128
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 129
    .local v0, vmSignatures:[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308203863082026ea00302010202044cbf70a0300d06092a864886f70d0101050500308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c652044657669636573301e170d3130313032303232343334345a170d3338303330373232343334345a308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c65204465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100c8260ec6c14a48603f722c066342b610eb723217a9feb04675f933d52babc3de9e1b4ea08e101a05acd25e4b00f0d78bd35702429a8690f52a1e7dcbac9bac35014a5ff2834860a47fdddc4a1f4fe9337d61a94315bd0c8d7d8576b9932478343a1722b355bd908378884530bcd1933903ec01eede4f614382ba5fb5a71d18833d2ea19f1670c5083936a18e851b7f8b12286003ada8cc5276d2d477ea2397187cc49354dfa0edba4c780a0c36156d1ace5dc02d873f45f452c934c9a1dcd7111904b9471909a1b437f17ca2cf87d56608e19ba4528c6698ca8eabab9894f45b60a0dccc19d52cd3b8747f9e700802a67bc44814c38cbc6cf3ebb38c8002d4770203010001300d06092a864886f70d010105050003820101002eca26340f71f65d94d931cc341e44c89dcbfdb66841e0cc9b44784e4eaa1a06e52586a6b31ddc546f6c5118fe6f84a850df4f8313a0d1ef4a528367c3a0b7f35a4d6528f6a9fd6d9482e889b5165e2ceec2f0d7248d75d03ce304a1c346ebdd2d5aee842e1d15b79eefcb9ecdf09d7f4373e3a0ad6db16c6671e0372d5d92bbf779700ee3441a48a9e563f40b4314de2306dd0b242fafcfc4e92bfa2aae4dcff49a258f908a6df6e046c2ca58d938ae523b9aaff3d39014cd02b0b88f53bdf249c13cddfd1a13148514f9e95dd3485ee64522db35e8e4142a9cc54ecf08d0aeeb646e08b841b21cdf3957288bb24568420f8ab54e62baaa270f2681df4f8c72"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 133
    :goto_0
    return-object v0

    .end local v0           #vmSignatures:[Landroid/content/pm/Signature;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getVerizonSignature()[Landroid/content/pm/Signature;
    .locals 4

    .prologue
    .line 140
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    .line 141
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 142
    .local v0, verizonSignatures:[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "30820251308201baa00302010202044a9e7fc5300d06092a864886f70d0101050500306d310b3009060355040613025553310b3009060355040813024e4a310f300d0603550407130657617272656e31193017060355040a1310566572697a6f6e20576972656c657373310c300a060355040b1303485353311730150603550403130e56696b617320426861726477616a301e170d3039303930323134323330315a170d3334303832373134323330315a306d310b3009060355040613025553310b3009060355040813024e4a310f300d0603550407130657617272656e31193017060355040a1310566572697a6f6e20576972656c657373310c300a060355040b1303485353311730150603550403130e56696b617320426861726477616a30819f300d06092a864886f70d010101050003818d0030818902818100d9ebceee62d4611d8f8ea59b67799d14b103159b5d82c8882d8085399eb67c6df2fa989f2ba139de96adbf67e72c7a7e3926e9d573b50445f2adfc7bf517055a3c2ad4b385ae60ea68341fa60f6cb03ec101e9ff269b3bef19390b8e203cc67f46a0f0b5bca98292078bce7c951dec09379c52bfde60b5ea1bef4c45989339030203010001300d06092a864886f70d010105050003818100d72768fd7956c68a7e3742441e25cac9669cb93e2c7747bc422d0ed548ff33a44bf8e58865e906d387d2c2f71e6cb200e250b69b1e88446869ade0eb16d45a96e902efe4d05e63963662eb24ee998e61c71b1bd8ca2b7cdabd547022bd76c86166bbcde19f9ce0974c6505073f26108097bf4c204dac8e692a9fb4fd438dfb07"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 143
    const/4 v1, 0x1

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "3082027d308201e6a00302010202044bfd9c6e300d06092a864886f70d0101050500308182310b3009060355040613025553310b3009060355040813024e4a311630140603550407130d4261736b696e6720526964676531193017060355040a1310566572697a6f6e20576972656c657373311c301a060355040b131350726f6475637420446576656c6f706d656e74311530130603550403130c446176696420416c77617264301e170d3130303532363232313035345a170d3337313031313232313035345a308182310b3009060355040613025553310b3009060355040813024e4a311630140603550407130d4261736b696e6720526964676531193017060355040a1310566572697a6f6e20576972656c657373311c301a060355040b131350726f6475637420446576656c6f706d656e74311530130603550403130c446176696420416c7761726430819f300d06092a864886f70d010101050003818d0030818902818100a45ee3f492181521473a061e15f1e5faa110bdaad1aaa4f5e32fe0b68f21e533cab467f68384e1acfa3ee103cc6e33c63e576282bf87af958121f3a432226d9c1fcdffd952520269a402f81f0d96da25c949cbc9585e3d9f295cc3a71a481018ddd97e90118918ae9e32baa3a50d9fa9c7c25b72fc555128b2949784d81415050203010001300d06092a864886f70d0101050500038181009c0a1b332c3f22235f7f82b83c0941a1b66b286a38ce36805e0857aa06a9bc41b8f55d7d38bc4a84e0194e8d648e6c4e4bf1e52df3e4e291cf5bd6e1b4b1bc0099d0299588eee053e303c5f8a5f9052d7e1b372a5d2cb77e03ad3e1a0f3e6e39ddf03ad6c3121cd49a76bec67f761286b290e17cc0388ed0422db6cb83a3332d"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 147
    :goto_0
    return-object v0

    .end local v0           #verizonSignatures:[Landroid/content/pm/Signature;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
