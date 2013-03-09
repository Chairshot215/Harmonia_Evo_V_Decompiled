.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$5;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->onCreate(Landroid/os/Bundle;)V
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
    .line 2226
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$5;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$5;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->collectDataThread()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 2229
    return-void
.end method
