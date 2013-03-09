.class public interface abstract Lcom/redbend/vdm/BootMsgHandler;
.super Ljava/lang/Object;
.source "BootMsgHandler.java"


# static fields
.field public static final ADDR_TYPE_HTTP:I = 0x1

.field public static final ADDR_TYPE_OBEX:I = 0x3

.field public static final ADDR_TYPE_WSP:I = 0x2


# virtual methods
.method public abstract getAddrType(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public abstract getNss([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public abstract getPin()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method
