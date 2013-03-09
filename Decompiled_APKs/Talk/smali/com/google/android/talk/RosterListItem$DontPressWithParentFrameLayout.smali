.class public Lcom/google/android/talk/RosterListItem$DontPressWithParentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RosterListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DontPressWithParentFrameLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 881
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 882
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 877
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 878
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 873
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 874
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem$DontPressWithParentFrameLayout;->isPressed()Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    if-eqz p1, :cond_3

    .line 891
    #calls: Lcom/google/android/talk/RosterListItem;->findRosterListItem(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;
    invoke-static {p0}, Lcom/google/android/talk/RosterListItem;->access$4200(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;

    move-result-object v0

    .line 892
    .local v0, r:Lcom/google/android/talk/RosterListItem;
    if-eqz v0, :cond_0

    .line 895
    #calls: Lcom/google/android/talk/RosterListItem;->joined(Lcom/google/android/talk/RosterListItem;)Z
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$4300(Lcom/google/android/talk/RosterListItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 896
    invoke-virtual {v0}, Lcom/google/android/talk/RosterListItem;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 897
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto :goto_0

    .line 899
    :cond_2
    #getter for: Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 904
    .end local v0           #r:Lcom/google/android/talk/RosterListItem;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto :goto_0
.end method
