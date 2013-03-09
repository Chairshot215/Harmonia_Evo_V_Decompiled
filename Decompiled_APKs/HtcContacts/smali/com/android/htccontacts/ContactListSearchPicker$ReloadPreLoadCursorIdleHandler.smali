.class Lcom/android/htccontacts/ContactListSearchPicker$ReloadPreLoadCursorIdleHandler;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReloadPreLoadCursorIdleHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4640
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4641
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4645
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 4646
    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3902(Z)Z

    .line 4648
    return v1
.end method
