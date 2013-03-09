.class Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "OpenSearchSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/search/OpenSearchSearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsCursor"
.end annotation


# instance fields
.field private final mDescriptions:Lorg/json/JSONArray;

.field private final mSuggestions:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "suggestions"
    .parameter "descriptions"

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    .line 224
    iput-object p2, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mDescriptions:Lorg/json/JSONArray;

    .line 225
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mDescriptions:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/browser/search/OpenSearchSearchEngine;->access$000()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/browser/search/OpenSearchSearchEngine;->access$100()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    iget v0, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 239
    iget v1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 240
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 242
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "OpenSearchSearchEngine"

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 246
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 248
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mDescriptions:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 250
    .restart local v0       #e:Lorg/json/JSONException;
    const-string v1, "OpenSearchSearchEngine"

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 252
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 253
    const v1, 0x7f02004b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
