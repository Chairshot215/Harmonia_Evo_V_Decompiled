.class public Lcom/htc/htcsprintservice/HtcSprintService;
.super Landroid/app/Service;
.source "HtcSprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_NOT_SPC_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_SPRINT_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_VM_PROJECT:Z = false

.field private static final PLATFORMKEY:I = 0x1

.field private static final SPCVMKEY:I = 0x2

.field private static final Slot_1_NAI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcSpcService"

.field private static final VERSION:Ljava/lang/String; = "4.2_20120112"


# instance fields
.field private final mBinder:Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSuspendLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsprintservice/HtcSprintService;->IS_SPRINT_PROJECT:Z

    .line 29
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/htcsprintservice/HtcSprintService;->IS_VM_PROJECT:Z

    .line 30
    sget-boolean v0, Lcom/htc/htcsprintservice/HtcSprintService;->IS_SPRINT_PROJECT:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/htc/htcsprintservice/HtcSprintService;->IS_VM_PROJECT:Z

    if-nez v0, :cond_2

    :goto_2
    sput-boolean v1, Lcom/htc/htcsprintservice/HtcSprintService;->IS_NOT_SPC_PROJECT:Z

    return-void

    :cond_0
    move v0, v2

    .line 28
    goto :goto_0

    :cond_1
    move v0, v2

    .line 29
    goto :goto_1

    :cond_2
    move v1, v2

    .line 30
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mSuspendLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/htc/htcsprintservice/HtcSprintService$1;

    invoke-direct {v0, p0}, Lcom/htc/htcsprintservice/HtcSprintService$1;-><init>(Lcom/htc/htcsprintservice/HtcSprintService;)V

    iput-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mBinder:Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htcsprintservice/HtcSprintService;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/htcsprintservice/HtcSprintService;->checkCallKey(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/htcsprintservice/HtcSprintService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htcsprintservice/HtcSprintService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/htcsprintservice/HtcSprintService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/htcsprintservice/HtcSprintService;->getDSAProp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkCallKey(II)Z
    .locals 3
    .parameter "keytype"
    .parameter "uid"

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, pkgs:[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 162
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-direct {p0, v2, p1}, Lcom/htc/htcsprintservice/HtcSprintService;->checkCallerSignature(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const/4 v1, 0x1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private checkCallerSignature(Ljava/lang/String;I)Z
    .locals 16
    .parameter "pname"
    .parameter "keytype"

    .prologue
    .line 228
    const-string v11, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    .line 231
    .local v11, sprintKey:Ljava/lang/String;
    const-string v10, "3082048130820369a003020102020900e7331f29e9d30143300d06092a864886f70d0101050500308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d301e170d3039303330313133343431355a170d3336303731373133343431355a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a278c94d68c907bf1ea198d3180b15c98cda4eef58ac8c035a885435673cd07621544d39b7b881a97bfe138faf10d23f5ea81c6651fd40abde14e8023cf7eb5f7830896e30563affe177ce7b0942d451b14da2ed3f48f8659755aacfa551eda79ce95a8b9cf94ede0501651995ef9d7344b4725137ae8ecd090399a6b22664e0c1fc3699fa55f62d5b290560d8bbf33cb804a7803ed49322a5117ef3c430fa66089218832852a8ba96a3554234515fc800545f1d160274a737b0af0eaf0576a40d378c7833e07f0624cbd6cc82ced8ff78b95670510560284492766381aed1f333f8ffea0bdde7cf37f0340cc45fa7ffda6f7d4d0129b60789db1671f389d0ab020103a381ef3081ec301d0603551d0e04160414acd68584abeffb3373e2f196757f34f36301bc783081bc0603551d230481b43081b18014acd68584abeffb3373e2f196757f34f36301bc78a1818da4818a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d820900e7331f29e9d30143300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010035bb7e2967477e72b7901b8da80f3cf9a4695769dbaaa6eed21662ad05d8587f06f6d5c78ef517ef4a928ebaa7105962403397def53c496fd3d4f54b0639d1fe5b6d37bb8fb5fe527d5c01215a25509ea987889fa3d7b6cc1117f37ef71769a5da2a8f5554365b805929daaeec6324c621215d26b0116ce56a22b2ab192c012741571d9e753f47448b9f12370eb59aa894153ea009d5c34ffd9946f62adb423caa28ac48e82078af2393dffe378a5cca802aa76595d89a666f1d0ef42bb22b7c974cfd0dd64c52beeb331b733ffada27c2c7020ce63c0a6f859603262f5c08f70c0e7fbcf5418b13d3575220c8f2f4cc3ff8a151a6e638c3084ca3aacf3b7729"

    .line 234
    .local v10, releaseKey:Ljava/lang/String;
    const-string v1, "3082048130820369a003020102020900c68e97bdcb5c96b9300d06092a864886f70d0101050500308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d301e170d3039303330313133343433315a170d3336303731373133343433315a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bb5a9285c16871159ce5a18007c626f34232787cfe647bc90fdd56965a6dab9256d4eadd1a0d321c1e5977df9d21fcda871e8ee811e845dcfb8478fa55bc61e1f72b88ee38ab16a63ed7361a432bc72fb8b4d544a5416960a50a244abfc5fc07bc987c3a7c9e196845aa09f38c6f28e8bd74faeaf21892e81bbe1eac717901ed9241f5d07e2c126b7968bec4ab490da9fd83ac752d0bafdbc6fd45bda6b9ada4fed07fa4b964afd3d27bfa57f902b878ac1c5b348ad60dcec522b69fbd436c9764d76d4b2b59509afdb342dc429a550cbf38c80f21b87abab57e22ed5ea79b6ca02f7b0127e2f1f5e3e615e020c7ab8a2b336342bc78388193cbeac1accba2fb020103a381ef3081ec301d0603551d0e04160414656d23a32b79700a81c079331af9a0d3ae9377093081bc0603551d230481b43081b18014656d23a32b79700a81c079331af9a0d3ae937709a1818da4818a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d820900c68e97bdcb5c96b9300c0603551d13040530030101ff300d06092a864886f70d010105050003820101005051a8f4d9e73a632c204e0a9b9dc0ab86f57b5a29c18c7b888d09df985241ca77ff2cef84de2fac5cb4d03de2d506dd8c55647de5d95345e2529a981c700b45038cc2fab68fe364cd040f43f6924aa355553d295cabb0378abc2d6fa8f8d0ef72dd02a3f2b047d26296fa7b4cd809c5255c91457b61cc77e875daaf447c757630ae92fc9ad3dc595881929c02cf4db47e67dcbb60b6877c3489484b6425ab96598be3f3838ff9ea4cb7c80f34d7f7afdd97a6b92e9a9a0ee66e6b7e593feb2d045d9c20de0a59a0e451458d8c058497d003c4289c29042af26d8933236d5ce6700ea34c6fee9775145e1ce99e9e61de9d17a9a13b8f43348672712a9e65e552"

    .line 237
    .local v1, IMreleaseKey:Ljava/lang/String;
    const-string v12, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    .line 241
    .local v12, sprintKey01:Ljava/lang/String;
    const-string v2, "308203863082026ea00302010202044cbf70a0300d06092a864886f70d0101050500308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c652044657669636573301e170d3130313032303232343334345a170d3338303330373232343334345a308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c65204465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100c8260ec6c14a48603f722c066342b610eb723217a9feb04675f933d52babc3de9e1b4ea08e101a05acd25e4b00f0d78bd35702429a8690f52a1e7dcbac9bac35014a5ff2834860a47fdddc4a1f4fe9337d61a94315bd0c8d7d8576b9932478343a1722b355bd908378884530bcd1933903ec01eede4f614382ba5fb5a71d18833d2ea19f1670c5083936a18e851b7f8b12286003ada8cc5276d2d477ea2397187cc49354dfa0edba4c780a0c36156d1ace5dc02d873f45f452c934c9a1dcd7111904b9471909a1b437f17ca2cf87d56608e19ba4528c6698ca8eabab9894f45b60a0dccc19d52cd3b8747f9e700802a67bc44814c38cbc6cf3ebb38c8002d4770203010001300d06092a864886f70d010105050003820101002eca26340f71f65d94d931cc341e44c89dcbfdb66841e0cc9b44784e4eaa1a06e52586a6b31ddc546f6c5118fe6f84a850df4f8313a0d1ef4a528367c3a0b7f35a4d6528f6a9fd6d9482e889b5165e2ceec2f0d7248d75d03ce304a1c346ebdd2d5aee842e1d15b79eefcb9ecdf09d7f4373e3a0ad6db16c6671e0372d5d92bbf779700ee3441a48a9e563f40b4314de2306dd0b242fafcfc4e92bfa2aae4dcff49a258f908a6df6e046c2ca58d938ae523b9aaff3d39014cd02b0b88f53bdf249c13cddfd1a13148514f9e95dd3485ee64522db35e8e4142a9cc54ecf08d0aeeb646e08b841b21cdf3957288bb24568420f8ab54e62baaa270f2681df4f8c72"

    .line 247
    .local v2, SPGKey01:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htcsprintservice/HtcSprintService;->mPm:Landroid/content/pm/PackageManager;

    const-string v14, "com.android.phone"

    const/16 v15, 0x40

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 248
    .local v7, mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 250
    .local v9, platformKey:[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htcsprintservice/HtcSprintService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v14, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 251
    .local v8, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 254
    .local v3, callerKey:[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v13, v9

    if-ge v5, v13, :cond_2

    .line 256
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    array-length v13, v3

    if-ge v6, v13, :cond_1

    .line 258
    aget-object v13, v9, v5

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    aget-object v14, v3, v6

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 260
    const/4 v13, 0x1

    .line 311
    .end local v3           #callerKey:[Landroid/content/pm/Signature;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #pi:Landroid/content/pm/PackageInfo;
    .end local v9           #platformKey:[Landroid/content/pm/Signature;
    :goto_2
    return v13

    .line 256
    .restart local v3       #callerKey:[Landroid/content/pm/Signature;
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v8       #pi:Landroid/content/pm/PackageInfo;
    .restart local v9       #platformKey:[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 254
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 266
    .end local v6           #j:I
    :cond_2
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 268
    const/4 v13, 0x0

    goto :goto_2

    .line 271
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_3
    array-length v13, v3

    if-ge v6, v13, :cond_5

    .line 272
    aget-object v13, v3, v6

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 274
    const/4 v13, 0x1

    goto :goto_2

    .line 271
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 280
    :cond_5
    const/4 v6, 0x0

    :goto_4
    array-length v13, v3

    if-ge v6, v13, :cond_7

    .line 281
    aget-object v13, v3, v6

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 283
    const/4 v13, 0x1

    goto :goto_2

    .line 280
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 290
    :cond_7
    const/4 v6, 0x0

    :goto_5
    array-length v13, v3

    if-ge v6, v13, :cond_9

    .line 291
    aget-object v13, v3, v6

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 293
    const/4 v13, 0x1

    goto :goto_2

    .line 290
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 298
    :cond_9
    const/4 v6, 0x0

    :goto_6
    array-length v13, v3

    if-ge v6, v13, :cond_b

    .line 299
    aget-object v13, v3, v6

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_a

    .line 301
    const/4 v13, 0x1

    goto :goto_2

    .line 298
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 306
    :cond_b
    const/4 v13, 0x0

    goto :goto_2

    .line 308
    .end local v3           #callerKey:[Landroid/content/pm/Signature;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #pi:Landroid/content/pm/PackageInfo;
    .end local v9           #platformKey:[Landroid/content/pm/Signature;
    :catch_0
    move-exception v4

    .line 309
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    const-string v13, "HtcSpcService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check signature fail["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private getDSAProp(I)Ljava/lang/String;
    .locals 6
    .parameter "id"

    .prologue
    .line 97
    const-string v2, ""

    .line 98
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 100
    .local v0, dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    :try_start_0
    new-instance v1, Lcom/htc/htcsprintservice/dm/DMAgentConnector;

    const-string v4, ":XCMD"

    invoke-direct {v1, v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v0           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .local v1, dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    :try_start_1
    invoke-virtual {v1}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->openConnection()Z

    .line 103
    invoke-static {p1}, Lcom/htc/htcsprintservice/HtcSprintService;->mappingItem(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 104
    invoke-static {p1}, Lcom/htc/htcsprintservice/HtcSprintService;->mappingItem(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    move-object v3, v2

    .line 108
    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/htc/htcsprintservice/HtcSprintService;->isTransIPid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 109
    invoke-static {v3}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v2

    .line 118
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_0

    .line 119
    :try_start_3
    const-string v2, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    .line 125
    :try_start_4
    invoke-virtual {v1}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->closeConnection()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v0, v1

    .line 130
    .end local v1           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v0       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    :cond_2
    :goto_2
    return-object v2

    .line 111
    .end local v0           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v3       #result:Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/htcsprintservice/HtcSprintService;->isTransHexid(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 112
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/htcsprintservice/HtcSprintService;->isRevert(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 115
    invoke-static {v3}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_1

    .line 127
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 129
    .end local v1           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v0       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    goto :goto_2

    .line 121
    :catch_1
    move-exception v4

    .line 124
    :goto_3
    if-eqz v0, :cond_2

    .line 125
    :try_start_6
    invoke-virtual {v0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->closeConnection()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 127
    :catch_2
    move-exception v4

    goto :goto_2

    .line 123
    :catchall_0
    move-exception v4

    .line 124
    :goto_4
    if-eqz v0, :cond_5

    .line 125
    :try_start_7
    invoke-virtual {v0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->closeConnection()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 128
    :cond_5
    :goto_5
    throw v4

    .line 127
    :catch_3
    move-exception v5

    goto :goto_5

    .line 123
    .end local v0           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v1       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v0       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    goto :goto_4

    .end local v0           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v3       #result:Ljava/lang/String;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v0       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_4

    .line 121
    .end local v0           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v1       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v0       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    goto :goto_3

    .end local v0           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v3       #result:Ljava/lang/String;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v0       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_3

    .end local v0           #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #dmAgent:Lcom/htc/htcsprintservice/dm/DMAgentConnector;
    .restart local v3       #result:Ljava/lang/String;
    :cond_6
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_1

    :cond_7
    move-object v3, v2

    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private isRevert(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method private isTransHexid(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 147
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransIPid(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method private static mappingItem(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 173
    packed-switch p0, :pswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 187
    :pswitch_0
    const-string v0, "C006"

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mBinder:Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "HtcSpcService"

    const-string v1, "onCreate4.2_20120112"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/htc/htcsprintservice/HtcSprintService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {p0}, Lcom/htc/htcsprintservice/HtcSprintService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcsprintservice/HtcSprintService;->mPm:Landroid/content/pm/PackageManager;

    .line 225
    return-void
.end method
