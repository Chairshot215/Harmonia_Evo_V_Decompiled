.class Lcom/google/android/finsky/config/GservicesValue$GservicesReaderForTests;
.super Ljava/lang/Object;
.source "GservicesValue.java"

# interfaces
.implements Lcom/google/android/finsky/config/GservicesValue$GservicesReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/config/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GservicesReaderForTests"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/config/GservicesValue$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderForTests;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 171
    return-object p2
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 175
    return-object p2
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 173
    return-object p2
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 177
    return-object p2
.end method

.method public getPartnerString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 181
    return-object p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 179
    return-object p2
.end method
