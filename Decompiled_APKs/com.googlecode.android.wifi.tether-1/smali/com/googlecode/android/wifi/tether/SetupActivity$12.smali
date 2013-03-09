.class Lcom/googlecode/android/wifi/tether/SetupActivity$12;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$12;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/16 v5, 0xd

    const/4 v2, 0x0

    .line 386
    const-string v1, "ABCDEFGHIJKLMONPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    .line 389
    .local v1, validChars:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 390
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 396
    const/4 v2, 0x1

    .line 400
    .end local v0           #i:I
    :goto_1
    return v2

    .line 391
    .restart local v0       #i:I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$12;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$12;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    const v5, 0x7f070042

    invoke-virtual {v4, v5}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$12;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$12;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    const v5, 0x7f070043

    invoke-virtual {v4, v5}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_1
.end method
