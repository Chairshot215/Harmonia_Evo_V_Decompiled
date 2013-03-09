.class public Ljavax/sip/ResponseEvent;
.super Ljava/util/EventObject;
.source "ResponseEvent.java"


# instance fields
.field private mClientTransaction:Ljavax/sip/ClientTransaction;

.field private mDialog:Ljavax/sip/Dialog;

.field private mResponse:Ljavax/sip/message/Response;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Ljavax/sip/ResponseEvent;->mDialog:Ljavax/sip/Dialog;

    iput-object p4, p0, Ljavax/sip/ResponseEvent;->mResponse:Ljavax/sip/message/Response;

    iput-object p2, p0, Ljavax/sip/ResponseEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    return-void
.end method


# virtual methods
.method public getClientTransaction()Ljavax/sip/ClientTransaction;
    .locals 1

    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    return-object v0
.end method

.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mDialog:Ljavax/sip/Dialog;

    return-object v0
.end method

.method public getResponse()Ljavax/sip/message/Response;
    .locals 1

    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mResponse:Ljavax/sip/message/Response;

    return-object v0
.end method
