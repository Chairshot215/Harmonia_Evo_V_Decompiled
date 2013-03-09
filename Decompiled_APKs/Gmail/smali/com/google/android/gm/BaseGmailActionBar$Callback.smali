.class public interface abstract Lcom/google/android/gm/BaseGmailActionBar$Callback;
.super Ljava/lang/Object;
.source "BaseGmailActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/BaseGmailActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract exitSearchMode()V
.end method

.method public abstract getCurrentAccount()Ljava/lang/String;
.end method

.method public abstract getCurrentListContext()Lcom/google/android/gm/ConversationListContext;
.end method

.method public abstract navigateToAccount(Ljava/lang/String;)Z
.end method

.method public abstract navigateToLabel(Ljava/lang/String;)V
.end method

.method public abstract reloadSearch(Ljava/lang/String;)V
.end method

.method public abstract showLabelList()V
.end method

.method public abstract startActionBarStatusCursorLoader(Ljava/lang/String;)V
.end method

.method public abstract stopActionBarStatusCursorLoader(Ljava/lang/String;)V
.end method
