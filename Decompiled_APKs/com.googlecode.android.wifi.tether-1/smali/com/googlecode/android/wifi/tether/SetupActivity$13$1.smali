.class Lcom/googlecode/android/wifi/tether/SetupActivity$13$1;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/SetupActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/googlecode/android/wifi/tether/SetupActivity$13;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/SetupActivity$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13$1;->this$1:Lcom/googlecode/android/wifi/tether/SetupActivity$13;

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 740
    const-string v0, "TETHER -> SetupActivity"

    const-string v1, "Close pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void
.end method
