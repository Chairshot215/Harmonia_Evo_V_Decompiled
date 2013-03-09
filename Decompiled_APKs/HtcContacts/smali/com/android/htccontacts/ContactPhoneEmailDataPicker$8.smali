.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$8;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->collectDataThread()V
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
    .line 2516
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$8;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$8;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissQueryProgress()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 2519
    return-void
.end method
