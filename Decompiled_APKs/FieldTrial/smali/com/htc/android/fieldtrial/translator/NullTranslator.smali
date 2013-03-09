.class public Lcom/htc/android/fieldtrial/translator/NullTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "NullTranslator.java"


# static fields
.field private static count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/fieldtrial/translator/NullTranslator;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 1
    .parameter "itemId"

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestReadSettingValue(ILcom/htc/android/fieldtrial/SettingValueUpdater;)V
    .locals 3
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 13
    const/4 v0, 0x0

    sget v1, Lcom/htc/android/fieldtrial/translator/NullTranslator;->count:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/htc/android/fieldtrial/translator/NullTranslator;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, Lcom/htc/android/fieldtrial/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 14
    return-void
.end method

.method protected sendRequest(I)V
    .locals 0
    .parameter "itemId"

    .prologue
    .line 26
    return-void
.end method
