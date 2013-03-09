.class public Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;
.super Ljava/lang/Object;
.source "SNBaseListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/SNBaseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LinkToOtherListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->launchLinkFriend()V

    .line 511
    return-void
.end method
