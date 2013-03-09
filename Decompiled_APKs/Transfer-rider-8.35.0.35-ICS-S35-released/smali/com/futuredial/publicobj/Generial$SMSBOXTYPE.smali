.class public final Lcom/futuredial/publicobj/Generial$SMSBOXTYPE;
.super Ljava/lang/Object;
.source "Generial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/publicobj/Generial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SMSBOXTYPE"
.end annotation


# static fields
.field public static final LISTTYPE_DELETED:I = 0x4

.field public static final LISTTYPE_DRAFT:I = 0x2

.field public static final LISTTYPE_INBOX:I = 0x1

.field public static final LISTTYPE_OUTBOX:I = 0x0

.field public static final LISTTYPE_SENT:I = 0x3

.field public static final LISTTYPE_UNDEFINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
