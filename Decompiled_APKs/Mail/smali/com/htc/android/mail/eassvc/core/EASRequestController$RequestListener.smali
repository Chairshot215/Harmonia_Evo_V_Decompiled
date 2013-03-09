.class interface abstract Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
.end method

.method public abstract syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
.end method

.method public abstract syncStartAfter(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
.end method

.method public abstract syncStartBefore(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
.end method
