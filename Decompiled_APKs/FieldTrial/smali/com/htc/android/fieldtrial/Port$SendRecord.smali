.class Lcom/htc/android/fieldtrial/Port$SendRecord;
.super Ljava/lang/Object;
.source "Port.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fieldtrial/Port;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendRecord"
.end annotation


# instance fields
.field public itemId:I

.field public translator:Lcom/htc/android/fieldtrial/translator/Translator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/Port$SendRecord;->translator:Lcom/htc/android/fieldtrial/translator/Translator;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/fieldtrial/Port$SendRecord;->itemId:I

    .line 122
    return-void
.end method
