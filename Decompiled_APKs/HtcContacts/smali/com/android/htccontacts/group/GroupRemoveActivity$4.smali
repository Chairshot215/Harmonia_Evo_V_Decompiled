.class Lcom/android/htccontacts/group/GroupRemoveActivity$4;
.super Ljava/lang/Object;
.source "GroupRemoveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupRemoveActivity;->confirmUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$4;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "v"
    .parameter "x"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$4;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->doUpdate()V

    .line 224
    return-void
.end method
