.class Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;
.super Ljava/lang/Object;
.source "ArrangeMemberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/ArrangeMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevertActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Lcom/android/htccontacts/group/ArrangeMemberActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->setResult(I)V

    .line 389
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->finish()V

    .line 390
    return-void
.end method
