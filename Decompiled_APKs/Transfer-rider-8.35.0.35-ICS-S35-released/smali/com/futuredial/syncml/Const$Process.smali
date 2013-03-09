.class public final Lcom/futuredial/syncml/Const$Process;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/syncml/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation


# static fields
.field public static final ALERT_RECVED:I = 0xa

.field public static final ALERT_SENT:I = 0x14

.field public static final FINISH:I = 0x28

.field public static final NONE:I = 0x0

.field public static final SEND_DATA_BEGIN:I = 0x1e

.field public static final SEND_DATA_END:I = 0x23

.field public static final START:I = 0x5

.field public static final SYNC_FROM_PHONE_BEGIN:I = 0x19

.field public static final SYNC_FROM_PHONE_END:I = 0x1b


# instance fields
.field final synthetic this$0:Lcom/futuredial/syncml/Const;


# direct methods
.method public constructor <init>(Lcom/futuredial/syncml/Const;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/futuredial/syncml/Const$Process;->this$0:Lcom/futuredial/syncml/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
