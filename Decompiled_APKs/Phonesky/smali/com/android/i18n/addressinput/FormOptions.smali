.class public Lcom/android/i18n/addressinput/FormOptions;
.super Ljava/lang/Object;
.source "FormOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/FormOptions$1;,
        Lcom/android/i18n/addressinput/FormOptions$Builder;
    }
.end annotation


# instance fields
.field private final mBaseId:Ljava/lang/String;

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

.field private final mServerUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/i18n/addressinput/FormOptions$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mCustomLabels:Ljava/util/EnumMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mOverrideFieldOrder:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mMaxLengths:Ljava/util/EnumMap;

    .line 55
    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mBaseId:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$000(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mBaseId:Ljava/lang/String;

    .line 56
    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mHiddenFields:Ljava/util/EnumSet;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$100(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mHiddenFields:Ljava/util/EnumSet;

    .line 57
    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mReadonlyFields:Ljava/util/EnumSet;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$200(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mReadonlyFields:Ljava/util/EnumSet;

    .line 58
    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mRequiredFields:Ljava/util/EnumSet;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$300(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mRequiredFields:Ljava/util/EnumSet;

    .line 59
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mCustomLabels:Ljava/util/EnumMap;

    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mCustomLabels:Ljava/util/EnumMap;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$400(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 60
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mOverrideFieldOrder:Ljava/util/Map;

    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mOverrideFieldOrder:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$500(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 61
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mMaxLengths:Ljava/util/EnumMap;

    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mMaxLengths:Ljava/util/EnumMap;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$600(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 62
    #getter for: Lcom/android/i18n/addressinput/FormOptions$Builder;->mServerUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->access$700(Lcom/android/i18n/addressinput/FormOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mServerUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/i18n/addressinput/FormOptions$Builder;Lcom/android/i18n/addressinput/FormOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/FormOptions;-><init>(Lcom/android/i18n/addressinput/FormOptions$Builder;)V

    return-void
.end method


# virtual methods
.method getCustomFieldOrder(Ljava/lang/String;)[Lcom/android/i18n/addressinput/AddressField;
    .locals 2
    .parameter "regionCode"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "regionCode cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mOverrideFieldOrder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method getHiddenFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mHiddenFields:Ljava/util/EnumSet;

    return-object v0
.end method

.method isHidden(Lcom/android/i18n/addressinput/AddressField;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mHiddenFields:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isReadonly(Lcom/android/i18n/addressinput/AddressField;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormOptions;->mReadonlyFields:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
