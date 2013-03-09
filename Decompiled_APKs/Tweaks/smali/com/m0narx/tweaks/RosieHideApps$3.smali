.class Lcom/m0narx/tweaks/RosieHideApps$3;
.super Ljava/lang/Object;
.source "RosieHideApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/RosieHideApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/RosieHideApps;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/RosieHideApps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    .line 74
    const-string v0, ""

    .line 75
    .local v0, HideApps:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps;->OrigHidenApps:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    sput-boolean v4, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    .line 86
    sput-boolean v4, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 87
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_rosie_hideapp"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/RosieHideApps;->finish()V

    .line 90
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #HideApps:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 75
    .restart local v0       #HideApps:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$3;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
