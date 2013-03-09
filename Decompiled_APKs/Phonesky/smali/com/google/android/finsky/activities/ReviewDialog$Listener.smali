.class public interface abstract Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.super Ljava/lang/Object;
.source "ReviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ReviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V
.end method
