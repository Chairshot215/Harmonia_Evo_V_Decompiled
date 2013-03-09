.class public final Lcom/futuredial/serializer/PhoneSetting$SettingType;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PhoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/PhoneSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    }
.end annotation


# static fields
.field public static final BOOK_MARK_FIELD_NUMBER:I = 0x5

.field public static final CALENDAR_FIELD_NUMBER:I = 0x3

.field public static final MUSIC_FIELD_NUMBER:I = 0x7

.field public static final PHONE_BOOK_FIELD_NUMBER:I = 0x2

.field public static final PHOTO_FIELD_NUMBER:I = 0x6

.field public static final SMS_FIELD_NUMBER:I = 0x4

.field public static final TASK_FIELD_NUMBER:I = 0x8

.field public static final TYPE_NAME_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingType;


# instance fields
.field private bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

.field private calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

.field private hasBookMark:Z

.field private hasCalendar:Z

.field private hasMusic:Z

.field private hasPhoneBook:Z

.field private hasPhoto:Z

.field private hasSms:Z

.field private hasTask:Z

.field private hasTypeName:Z

.field private memoizedSerializedSize:I

.field private music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

.field private phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

.field private photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

.field private sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

.field private task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

.field private typeName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1252
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;-><init>(Z)V

    sput-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 1253
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->internalForceInit()V

    .line 1254
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-direct {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->initFields()V

    .line 1255
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 533
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->typeName_:Ljava/lang/String;

    .line 651
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->memoizedSerializedSize:I

    .line 507
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->initFields()V

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/serializer/PhoneSetting$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 533
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->typeName_:Ljava/lang/String;

    .line 651
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->memoizedSerializedSize:I

    .line 509
    return-void
.end method

.method static synthetic access$1902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->typeName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 588
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 589
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 590
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 591
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 592
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 593
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 594
    return-void
.end method

.method public static newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 1

    .prologue
    .line 761
    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1700()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 764
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    .line 731
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v1

    .line 734
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    .line 742
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v1

    .line 745
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 653
    iget v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->memoizedSerializedSize:I

    .line 654
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 691
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 656
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 661
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 665
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 666
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 669
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 670
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 673
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 674
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 677
    :cond_5
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 678
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 681
    :cond_6
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 682
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 685
    :cond_7
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 686
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 689
    :cond_8
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 690
    iput v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->memoizedSerializedSize:I

    move v1, v0

    .line 691
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->typeName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBookMark()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark:Z

    return v0
.end method

.method public hasCalendar()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar:Z

    return v0
.end method

.method public hasMusic()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic:Z

    return v0
.end method

.method public hasPhoneBook()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook:Z

    return v0
.end method

.method public hasPhoto()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto:Z

    return v0
.end method

.method public hasSms()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms:Z

    return v0
.end method

.method public hasTask()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask:Z

    return v0
.end method

.method public hasTypeName()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$1500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 596
    iget-boolean v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName:Z

    if-nez v1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 601
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 604
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 607
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :cond_5
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 610
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    :cond_6
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 613
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    :cond_7
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 616
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 1

    .prologue
    .line 766
    invoke-static {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->toBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->toBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getSerializedSize()I

    .line 624
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 633
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 636
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 639
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 642
    :cond_5
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 643
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 645
    :cond_6
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 646
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 648
    :cond_7
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 649
    return-void
.end method
