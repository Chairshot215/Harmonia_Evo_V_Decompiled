.class interface abstract Lcom/htc/launcher/FolderInfo$FolderListener;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FolderListener"
.end annotation


# virtual methods
.method public abstract onAdd(Lcom/htc/launcher/ApplicationInfo;)V
.end method

.method public abstract onItemsChanged()V
.end method

.method public abstract onRemove(Lcom/htc/launcher/ApplicationInfo;)V
.end method

.method public abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method
