.class Lcom/android/htccontacts/group/GroupRemoveActivity$2;
.super Ljava/lang/Object;
.source "GroupRemoveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupRemoveActivity;->setListeners()V
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
    .line 196
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$2;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$2;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->confirmUpdate()V

    .line 199
    return-void
.end method
