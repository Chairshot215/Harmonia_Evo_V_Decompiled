.class Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;
.super Lcom/google/android/googlequicksearchbox/util/DebouncedValue;
.source "SuggestionsControllerImplPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumVisibleSlots"
.end annotation


# instance fields
.field private mNumVisibleSlots:I

.field private final mOrientation:I

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;ILcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;)V
    .locals 3
    .parameter
    .parameter "orientation"
    .parameter "config"
    .parameter "settings"

    .prologue
    const/4 v2, 0x0

    .line 297
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;

    .line 298
    #getter for: Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mClock:Lcom/google/android/googlequicksearchbox/Clock;
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->access$000(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;)Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/Config;->getDefaultNumVisibleSuggestionSlots()I

    move-result v1

    invoke-interface {p4, p2, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getNumVisibleSuggestionSlots(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;-><init>(Lcom/google/android/googlequicksearchbox/Clock;I)V

    .line 301
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->setIncreaseDebounce(II)V

    .line 302
    const/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->setDecreaseDebounce(II)V

    .line 303
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mOrientation:I

    .line 304
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 305
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->get()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    .line 306
    return-void
.end method


# virtual methods
.method public get()I
    .locals 4

    .prologue
    .line 310
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->get()I

    move-result v0

    .line 311
    .local v0, numVisibleSlots:I
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    if-eq v0, v1, :cond_0

    .line 312
    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    .line 313
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mOrientation:I

    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setNumVisibleSuggestionSlots(II)V

    .line 315
    :cond_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    return v1
.end method
