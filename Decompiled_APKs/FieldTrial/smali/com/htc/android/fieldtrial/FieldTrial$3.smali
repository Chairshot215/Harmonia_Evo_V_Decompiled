.class Lcom/htc/android/fieldtrial/FieldTrial$3;
.super Ljava/lang/Object;
.source "FieldTrial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/fieldtrial/FieldTrial;->populateFileds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/FieldTrial;


# direct methods
.method constructor <init>(Lcom/htc/android/fieldtrial/FieldTrial;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/android/fieldtrial/FieldTrial$3;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial$3;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/fieldtrial/FieldTrial;->showDialog(I)V

    .line 284
    new-instance v0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;-><init>()V

    .line 285
    .local v0, updater:Lcom/htc/android/fieldtrial/SettingValueUpdater;
    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial$3;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-static {}, Lcom/htc/android/fieldtrial/FieldTrial;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/android/fieldtrial/SettingValueUpdater;->anthenticate(Lcom/htc/android/fieldtrial/FieldTrial;Ljava/lang/String;)V

    .line 286
    return-void
.end method
