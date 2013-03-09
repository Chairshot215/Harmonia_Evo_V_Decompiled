.class Lcom/android/htccontacts/ContactListSearchPicker$3;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactListSearchPicker;->handleButtonFrameView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactListSearchPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$3;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$3;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->doPostiveAction()V

    .line 707
    return-void
.end method
