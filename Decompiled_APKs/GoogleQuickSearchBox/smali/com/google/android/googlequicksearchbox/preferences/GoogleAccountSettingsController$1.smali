.class Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$1;
.super Landroid/database/DataSetObserver;
.source "GoogleAccountSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    #calls: Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccount()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->access$000(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V

    .line 66
    return-void
.end method
