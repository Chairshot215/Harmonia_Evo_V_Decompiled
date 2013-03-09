.class public Lcom/android/i18n/addressinput/FormOptions$Builder;
.super Ljava/lang/Object;
.source "FormOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/FormOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBaseId:Ljava/lang/String;

.field private final mCustomLabels:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHiddenFields:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLengths:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverrideFieldOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadonlyFields:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequiredFields:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation
.end field

.field private mServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "addressform"

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mBaseId:Ljava/lang/String;

    .line 131
    const-class v0, Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mRequiredFields:Ljava/util/EnumSet;

    .line 134
    const-class v0, Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mHiddenFields:Ljava/util/EnumSet;

    .line 137
    const-class v0, Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mReadonlyFields:Ljava/util/EnumSet;

    .line 140
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mCustomLabels:Ljava/util/EnumMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mOverrideFieldOrder:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mMaxLengths:Ljava/util/EnumMap;

    .line 152
    new-instance v0, Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/CacheData;-><init>()V

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/CacheData;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mServerUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mBaseId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mHiddenFields:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mReadonlyFields:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mRequiredFields:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mCustomLabels:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mOverrideFieldOrder:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mMaxLengths:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/i18n/addressinput/FormOptions;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lcom/android/i18n/addressinput/FormOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/addressinput/FormOptions;-><init>(Lcom/android/i18n/addressinput/FormOptions$Builder;Lcom/android/i18n/addressinput/FormOptions$1;)V

    return-object v0
.end method

.method public hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;
    .locals 2
    .parameter "field"

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AddressField field cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mHiddenFields:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions$Builder;->mRequiredFields:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 171
    return-object p0
.end method
