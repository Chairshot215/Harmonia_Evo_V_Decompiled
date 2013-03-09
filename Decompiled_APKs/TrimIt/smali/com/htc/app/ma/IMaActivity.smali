.class public interface abstract Lcom/htc/app/ma/IMaActivity;
.super Ljava/lang/Object;
.source "IMaActivity.java"

# interfaces
.implements Lcom/htc/app/ma/IMaStateOwner;


# virtual methods
.method public abstract dimBackground(I)V
.end method

.method public abstract finishActivityById(Ljava/lang/String;)V
.end method

.method public abstract finishActivityInNextFrame()V
.end method

.method public abstract finishActivityInSiblingFrame(II)V
.end method

.method public abstract finishSelf()V
.end method

.method public abstract getCustomizedPadding(Z)[I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMainActivity()Lcom/htc/app/ma/MaMainActivity;
.end method

.method public abstract getMenuOwnerId()I
.end method

.method public abstract getPosition()I
.end method

.method public abstract maStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method public abstract onMaActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onMaCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onMaReceiveIntent(Landroid/content/Intent;)V
.end method

.method public abstract removeDim()V
.end method

.method public abstract sendIntentToMain(Landroid/content/Intent;)V
.end method

.method public abstract sendIntentToSibling(IILandroid/content/Intent;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setPosition(I)V
.end method

.method public abstract startActivityInCurrentFrame(Landroid/content/Intent;)V
.end method

.method public abstract startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract startActivityInNextFrameAndShift(Landroid/content/Intent;)V
.end method

.method public abstract startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract startActivityInSiblingFrame(Landroid/content/Intent;I)V
.end method

.method public abstract startActivityInSiblingFrame(Landroid/content/Intent;II)V
.end method

.method public abstract startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
.end method

.method public abstract startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
.end method
