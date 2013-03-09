.class public Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;
.super Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
.source "FlagItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicFlagType"
.end annotation


# instance fields
.field private final mContentFlagType:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .parameter "contentFlagType"
    .parameter "stringId"
    .parameter "textEntryStringId"

    .prologue
    .line 444
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;-><init>(II)V

    .line 445
    iput p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->mContentFlagType:I

    .line 446
    return-void
.end method

.method public static getMusicFlags()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f070205

    .line 423
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 424
    .local v0, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;>;"
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x5

    const v3, 0x7f070204

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x1

    const v3, 0x7f0701fc

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x4

    const v3, 0x7f0701fe

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x6

    const v3, 0x7f070203

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/4 v2, 0x2

    const v3, 0x7f070202

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    const/16 v2, 0x8

    const v3, 0x7f070201

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    return-object v0
.end method


# virtual methods
.method public postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "doc"
    .parameter "flagMessage"

    .prologue
    .line 450
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 451
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->mContentFlagType:I

    new-instance v4, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$1;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$2;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;)V

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->flagContent(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 462
    return-void
.end method
