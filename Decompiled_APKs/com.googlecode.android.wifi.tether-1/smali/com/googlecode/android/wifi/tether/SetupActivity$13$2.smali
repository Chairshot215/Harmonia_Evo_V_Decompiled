.class Lcom/googlecode/android/wifi/tether/SetupActivity$13$2;
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13$2;->this$1:Lcom/googlecode/android/wifi/tether/SetupActivity$13;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 823
    const-string v0, "TETHER -> SetupActivity"

    const-string v1, "Close pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13$2;->this$1:Lcom/googlecode/android/wifi/tether/SetupActivity$13;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->access$0(Lcom/googlecode/android/wifi/tether/SetupActivity$13;)Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-result-object v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "txpowerwarningpref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 825
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13$2;->this$1:Lcom/googlecode/android/wifi/tether/SetupActivity$13;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->access$0(Lcom/googlecode/android/wifi/tether/SetupActivity$13;)Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-result-object v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 826
    return-void
.end method
