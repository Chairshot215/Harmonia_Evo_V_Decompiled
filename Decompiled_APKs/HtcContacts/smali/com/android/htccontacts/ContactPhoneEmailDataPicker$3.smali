.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$3;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$3;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$3;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->enableOrNotSaveOKButton()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 1996
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$3;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1997
    return-void
.end method
