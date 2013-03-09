.class Lcom/m0narx/tweaks/systemui$1;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemui;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/systemui;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$1;->this$0:Lcom/m0narx/tweaks/systemui;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 80
    .local v0, BVar:Ljava/lang/Integer;
    const-string v1, ""

    .line 81
    .local v1, TweakName:Ljava/lang/String;
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 82
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$1;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    sput-boolean v4, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    .line 107
    sput-boolean v4, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 108
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$1;->this$0:Lcom/m0narx/tweaks/systemui;

    #calls: Lcom/m0narx/tweaks/systemui;->CheckButtonState()V
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$1(Lcom/m0narx/tweaks/systemui;)V

    .line 109
    return-void

    .line 84
    :pswitch_0
    const-string v1, "tweaks_show_alarm_icon"

    .line 85
    goto :goto_0

    .line 87
    :pswitch_1
    const-string v1, "tweaks_show_battery"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    const-string v1, "tweaks_show_gps_icon"

    .line 91
    goto :goto_0

    .line 93
    :pswitch_3
    const-string v1, "tweaks_show_headset_icon"

    .line 94
    goto :goto_0

    .line 96
    :pswitch_4
    const-string v1, "tweaks_show_volume_icons"

    .line 97
    goto :goto_0

    .line 99
    :pswitch_5
    const-string v1, "tweaks_show_wifi_icon"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_6
    const-string v1, "tweaks_show_bluetooth_icon"

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
