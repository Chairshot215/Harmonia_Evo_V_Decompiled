.class final Lcom/android/mms/ui/MyLinkify$2;
.super Ljava/lang/Object;
.source "MyLinkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MyLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 187
    const/4 v9, 0x1

    if-le p2, v9, :cond_0

    .line 188
    add-int/lit8 v9, p2, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x40

    if-ne v9, v10, :cond_0

    .line 189
    const/4 v9, 0x0

    .line 230
    :goto_0
    return v9

    .line 193
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, org:Ljava/lang/String;
    invoke-virtual {v3, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 200
    .local v1, hasScheme:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-static {}, Lcom/android/mms/ui/MyLinkify;->access$000()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 201
    invoke-static {}, Lcom/android/mms/ui/MyLinkify;->access$000()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 202
    if-eqz v1, :cond_1

    .line 203
    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 204
    .local v0, c:I
    add-int/lit8 v9, v0, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, ssp:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MyLinkify;->access$100()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v9, 0x1

    goto :goto_0

    .line 200
    .end local v0           #c:I
    .end local v5           #ssp:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MyLinkify;->access$100()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v6, p2, -0x9

    .line 216
    .local v6, startPos:I
    if-gez v6, :cond_3

    add-int/lit8 v6, p2, -0x6

    .line 217
    :cond_3
    if-gez v6, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {v3, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, str:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/MyLinkify;->fnFindLastTagPos(Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, result:I
    if-gez v4, :cond_5

    .line 228
    const/4 v9, 0x1

    goto :goto_0

    .line 230
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method
