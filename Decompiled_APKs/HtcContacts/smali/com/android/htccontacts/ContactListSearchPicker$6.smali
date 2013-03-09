.class Lcom/android/htccontacts/ContactListSearchPicker$6;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactListSearchPicker;->delayFinishActivity()V
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
    .line 3954
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$6;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$6;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    .line 3957
    return-void
.end method
