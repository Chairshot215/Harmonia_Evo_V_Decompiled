.class Lcom/android/htccontacts/group/ArrangeMemberActivity$DoActionListener;
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
    name = "DoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$DoActionListener;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Lcom/android/htccontacts/group/ArrangeMemberActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$DoActionListener;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$DoActionListener;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    #calls: Lcom/android/htccontacts/group/ArrangeMemberActivity;->updateMemberOrder()V
    invoke-static {v0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->access$700(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    .line 383
    return-void
.end method
