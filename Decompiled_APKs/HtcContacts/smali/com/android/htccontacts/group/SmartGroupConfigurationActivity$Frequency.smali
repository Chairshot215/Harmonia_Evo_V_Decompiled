.class public Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$Frequency;
.super Landroid/database/ContentObserver;
.source "SmartGroupConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Frequency"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$Frequency;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    .line 685
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 687
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 691
    return-void
.end method
