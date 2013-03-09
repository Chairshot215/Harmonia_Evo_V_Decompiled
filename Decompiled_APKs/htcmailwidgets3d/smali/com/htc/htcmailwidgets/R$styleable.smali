.class public final Lcom/htc/htcmailwidgets/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TextHeaderBar:[I = null

.field public static final TextHeaderBar_headerbar_text:I = 0x1

.field public static final TextHeaderBar_headerbar_text1:I = 0x2

.field public static final TextHeaderBar_headerbar_text2:I = 0x3

.field public static final TextHeaderBar_headerbar_text3:I = 0x4

.field public static final TextHeaderBar_headerbar_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2268
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/htcmailwidgets/R$styleable;->TextHeaderBar:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
