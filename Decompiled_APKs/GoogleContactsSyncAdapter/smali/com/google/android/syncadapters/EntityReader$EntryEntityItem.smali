.class public Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;
.super Ljava/lang/Object;
.source "EntityReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/EntityReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryEntityItem"
.end annotation


# instance fields
.field public final entity:Landroid/content/Entity;

.field public final entry:Lcom/google/wireless/gdata2/data/Entry;

.field public final entryIndex:I


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/data/Entry;ILandroid/content/Entity;)V
    .locals 0
    .parameter "entry"
    .parameter "entryIndex"
    .parameter "entity"

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 196
    iput-object p3, p0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entity:Landroid/content/Entity;

    .line 197
    iput p2, p0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entryIndex:I

    .line 198
    return-void
.end method
