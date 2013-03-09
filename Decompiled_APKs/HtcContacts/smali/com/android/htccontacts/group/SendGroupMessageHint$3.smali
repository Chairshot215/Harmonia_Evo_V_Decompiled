.class Lcom/android/htccontacts/group/SendGroupMessageHint$3;
.super Ljava/lang/Object;
.source "SendGroupMessageHint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/SendGroupMessageHint;->resolveIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/SendGroupMessageHint;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/SendGroupMessageHint;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/htccontacts/group/SendGroupMessageHint$3;->this$0:Lcom/android/htccontacts/group/SendGroupMessageHint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint$3;->this$0:Lcom/android/htccontacts/group/SendGroupMessageHint;

    #calls: Lcom/android/htccontacts/group/SendGroupMessageHint;->doCancel()V
    invoke-static {v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->access$100(Lcom/android/htccontacts/group/SendGroupMessageHint;)V

    .line 104
    return-void
.end method
