.class public Lcom/htc/android/epst/internal/SendRecord;
.super Ljava/lang/Object;
.source "SendRecord.java"


# instance fields
.field public itemId:I

.field public translator:Lcom/htc/android/epst/translator/Translator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/epst/internal/SendRecord;->translator:Lcom/htc/android/epst/translator/Translator;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/internal/SendRecord;->itemId:I

    .line 11
    return-void
.end method
