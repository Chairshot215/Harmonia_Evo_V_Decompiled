.class Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;
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
    name = "GservicesReaderImpl"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 1
    .parameter "contentResolver"
    .parameter "prefixesToCache"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2}, Lcom/google/android/gsf/Gservices;->bulkCacheByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, floatStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 149
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 147
    .restart local p2
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
