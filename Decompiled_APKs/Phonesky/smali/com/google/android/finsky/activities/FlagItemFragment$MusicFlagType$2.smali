.class Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$2;
.super Ljava/lang/Object;
.source "FlagItemFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType$2;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 460
    return-void
.end method
