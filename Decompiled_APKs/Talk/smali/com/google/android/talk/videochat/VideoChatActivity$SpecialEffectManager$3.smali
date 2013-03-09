.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$3;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->makeAdapter([Ljava/lang/String;Landroid/content/res/TypedArray;[Ljava/lang/Object;)Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$3;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100097

    if-ne v0, v1, :cond_0

    .line 929
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 930
    const/4 v0, 0x1

    .line 932
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
