.class public interface abstract Lcom/android/mms/transaction/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# static fields
.field public static final RECIPIENTS_SEPARATOR:Ljava/lang/String; = ";"


# virtual methods
.method public abstract getSentMessage()Landroid/net/Uri;
.end method

.method public abstract sendMessage(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method
