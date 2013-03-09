.class final Lcom/android/mms/ui/MyLinkify$3;
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
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 242
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, url:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MyLinkify;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v3

    .line 246
    :cond_1
    const/4 v0, 0x0

    .line 247
    .local v0, digitCount:I
    move v1, p2

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_0

    .line 248
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 250
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x9f

    if-ne v5, v6, :cond_2

    .line 251
    const/4 v5, 0x3

    if-lt v0, v5, :cond_5

    move v3, v4

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    const/16 v5, 0x94

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0xaf

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 259
    :cond_3
    const/4 v5, 0x4

    if-lt v0, v5, :cond_5

    move v3, v4

    .line 261
    goto :goto_0

    .line 265
    :cond_4
    const/4 v5, 0x5

    if-lt v0, v5, :cond_5

    move v3, v4

    .line 267
    goto :goto_0

    .line 247
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
