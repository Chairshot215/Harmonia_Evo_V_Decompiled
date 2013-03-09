.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$7;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->obtainFrequencyGroupButton(Lcom/htc/widget/HtcListView;)Landroid/view/View;
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
    .line 2275
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$7;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$7;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->handleFreqiencyGroupButtonClick()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 2278
    return-void
.end method
