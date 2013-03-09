.class Lcom/futuredial/ui/CActivityStatus;
.super Ljava/lang/Object;
.source "DMIUI.java"


# instance fields
.field curCtrl:Lcom/futuredial/ui/ViewController;

.field dialogMan:Lcom/futuredial/ui/DialogManager;

.field gHandler:Lcom/futuredial/ui/UIHandler;

.field innerMem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;

.field toast:Landroid/widget/Toast;

.field vib:Landroid/os/Vibrator;

.field wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
