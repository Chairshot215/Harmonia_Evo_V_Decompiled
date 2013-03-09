.class final enum Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
.super Ljava/lang/Enum;
.source "RadioConnectionFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

.field public static final enum DEFAULT:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

.field public static final enum DUN:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

.field public static final enum HIPRI:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

.field public static final enum SUPL:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    const-string v1, "HIPRI"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->HIPRI:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    new-instance v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    const-string v1, "SUPL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->SUPL:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    new-instance v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    const-string v1, "DUN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->DUN:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    new-instance v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->DEFAULT:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    sget-object v1, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->HIPRI:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->SUPL:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->DUN:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->DEFAULT:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->$VALUES:[Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    .locals 5
    .parameter "value"

    .prologue
    .line 41
    invoke-static {}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->values()[Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 42
    .local v3, type:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local v3           #type:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    :goto_1
    return-object v3

    .line 41
    .restart local v3       #type:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v3           #type:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    :cond_1
    sget-object v3, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->DEFAULT:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->$VALUES:[Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    return-object v0
.end method
