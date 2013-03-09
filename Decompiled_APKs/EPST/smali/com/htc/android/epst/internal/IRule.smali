.class public interface abstract Lcom/htc/android/epst/internal/IRule;
.super Ljava/lang/Object;
.source "IRule.java"


# virtual methods
.method public abstract onPreSendAction(Ljava/lang/String;)I
.end method

.method public abstract onReceivedReadMessage(ILjava/lang/String;ILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)I
.end method

.method public abstract onReceivedWriteMessage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onSendEditAction(IIILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract onSendViewAction(IIILjava/lang/String;)Ljava/lang/String;
.end method
