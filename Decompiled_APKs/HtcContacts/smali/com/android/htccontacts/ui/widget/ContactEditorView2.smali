.class public Lcom/android/htccontacts/ui/widget/ContactEditorView2;
.super Landroid/widget/RelativeLayout;
.source "ContactEditorView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htccontacts/model/KindSectionViewUpdate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;,
        Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;,
        Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    }
.end annotation


# static fields
.field private static final AccountDataMapKey_Name:Ljava/lang/String; = "name"

.field private static final AccountDataMapKey_Type:Ljava/lang/String; = "type"

.field protected static final DEBUG:Z = false

.field private static final INNER_QUERY:I = 0xff01

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccountData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAddMore:Landroid/view/ViewGroup;

.field private mChangeAccountView:Landroid/view/View;

.field private mContainerContactType:Landroid/view/ViewGroup;

.field private mContainerEmail:Landroid/view/ViewGroup;

.field private mContainerEvent:Landroid/view/ViewGroup;

.field private mContainerGroup:Landroid/view/ViewGroup;

.field private mContainerIm:Landroid/view/ViewGroup;

.field private mContainerNickname:Landroid/view/ViewGroup;

.field private mContainerNote:Landroid/view/ViewGroup;

.field private mContainerOrganization:Landroid/view/ViewGroup;

.field private mContainerPhone:Landroid/view/ViewGroup;

.field private mContainerPostal:Landroid/view/ViewGroup;

.field private mContainerSipAddress:Landroid/view/ViewGroup;

.field private mContainerWebsite:Landroid/view/ViewGroup;

.field public mEditorMonitorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/htccontacts/ui/widget/EditorMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneral:Landroid/view/ViewGroup;

.field public mGroupIsReadOnlyCachMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

.field private mGroupMemberKindSectionViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/KindSectionView;",
            ">;"
        }
    .end annotation
.end field

.field public mGroupTitleCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPhotoEditor:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKindContainerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerGroup:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

.field private mKindViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/htccontacts/ui/widget/KindSectionView;",
            ">;"
        }
    .end annotation
.end field

.field private mListNewAddedGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOther:Landroid/view/ViewGroup;

.field private mQueryHandler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;

.field private mReadOnly:Landroid/widget/TextView;

.field private mRingtoneKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

.field private mSecondary:Landroid/view/ViewGroup;

.field private mSecondaryClosed:Landroid/graphics/drawable/Drawable;

.field private mSecondaryHeader:Landroid/widget/TextView;

.field private mSecondaryOpen:Landroid/graphics/drawable/Drawable;

.field public mSourceTypeEditorMonitorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/htccontacts/ui/widget/EditorMonitor;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSources:Lcom/android/htccontacts/model/AccountTypeManager;

.field private mState:Lcom/android/htccontacts/model/EntityDeltaList;

.field private mviewEmailAdd:Landroid/view/View;

.field private mviewEventAdd:Landroid/view/View;

.field private mviewImAdd:Landroid/view/View;

.field private mviewNicknameAdd:Landroid/view/View;

.field private mviewNoteAdd:Landroid/view/View;

.field private mviewOrganizationAdd:Landroid/view/View;

.field private mviewPhoneAdd:Landroid/view/View;

.field private mviewPostalAdd:Landroid/view/View;

.field private mviewSipAddressAdd:Landroid/view/View;

.field private mviewWebsiteAdd:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "ContactEditorView2"

    sput-object v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mHasPhotoEditor:Z

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindViewMap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSourceTypeEditorMonitorMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mEditorMonitorMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupTitleCacheMap:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupIsReadOnlyCachMap:Ljava/util/HashMap;

    .line 130
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    .line 131
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 135
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    .line 136
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 137
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    .line 138
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEmail:Landroid/view/ViewGroup;

    .line 139
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 140
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    .line 141
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    .line 142
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerGroup:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 143
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEvent:Landroid/view/ViewGroup;

    .line 144
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 145
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    .line 146
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerIm:Landroid/view/ViewGroup;

    .line 147
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 148
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    .line 149
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPostal:Landroid/view/ViewGroup;

    .line 150
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 151
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    .line 152
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerOrganization:Landroid/view/ViewGroup;

    .line 153
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 154
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    .line 155
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNote:Landroid/view/ViewGroup;

    .line 156
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 157
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    .line 158
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNickname:Landroid/view/ViewGroup;

    .line 159
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 160
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    .line 161
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerWebsite:Landroid/view/ViewGroup;

    .line 162
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 163
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    .line 166
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerSipAddress:Landroid/view/ViewGroup;

    .line 167
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 168
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewSipAddressAdd:Landroid/view/View;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAccountData:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mHasPhotoEditor:Z

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindViewMap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSourceTypeEditorMonitorMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mEditorMonitorMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupTitleCacheMap:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupIsReadOnlyCachMap:Ljava/util/HashMap;

    .line 130
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    .line 131
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 135
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    .line 136
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 137
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    .line 138
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEmail:Landroid/view/ViewGroup;

    .line 139
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 140
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    .line 141
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    .line 142
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerGroup:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 143
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEvent:Landroid/view/ViewGroup;

    .line 144
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 145
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    .line 146
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerIm:Landroid/view/ViewGroup;

    .line 147
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 148
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    .line 149
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPostal:Landroid/view/ViewGroup;

    .line 150
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 151
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    .line 152
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerOrganization:Landroid/view/ViewGroup;

    .line 153
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 154
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    .line 155
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNote:Landroid/view/ViewGroup;

    .line 156
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 157
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    .line 158
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNickname:Landroid/view/ViewGroup;

    .line 159
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 160
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    .line 161
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerWebsite:Landroid/view/ViewGroup;

    .line 162
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 163
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    .line 166
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerSipAddress:Landroid/view/ViewGroup;

    .line 167
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 168
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewSipAddressAdd:Landroid/view/View;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAccountData:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mQueryHandler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ui/widget/ContactEditorView2;Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;)Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mQueryHandler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ui/widget/ContactEditorView2;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    return-object v0
.end method

.method private addEmail()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1434
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1435
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1437
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$2;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1442
    .local v0, oclEmail:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1447
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1448
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1450
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$3;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1455
    .local v0, oclEvent:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addIm()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1460
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1461
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1463
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$4;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1468
    .local v0, oclIm:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/im"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addNickname()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1512
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1513
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1515
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$8;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$8;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1520
    .local v0, oclNickname:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addNote()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1499
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1501
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1502
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$7;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1507
    .local v0, oclNote:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/note"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addOrganization()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1486
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1489
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$6;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1494
    .local v0, oclOrganization:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addPhone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1421
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1424
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$1;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1429
    .local v0, oclPhone:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addPostal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1473
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1474
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1476
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$5;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1481
    .local v0, oclPostal:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addSipAddress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1539
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1540
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1549
    :cond_0
    :goto_0
    return-void

    .line 1541
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1542
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$10;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$10;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1547
    .local v0, oclSip:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private addWebsite()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1525
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1526
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1528
    new-instance v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$9;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$9;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 1533
    .local v0, oclWebsite:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "vnd.android.cursor.item/website"

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 10
    .parameter "ocl"

    .prologue
    const/4 v9, 0x2

    .line 1595
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0237

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAccountData:Ljava/util/ArrayList;

    const v3, 0x209004b

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "type"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "name"

    aput-object v8, v4, v5

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v7, v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 1600
    .local v6, selectAccountDialog:Lcom/htc/widget/HtcAlertDialog;
    return-object v6

    .line 1595
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x2t
        0x14t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method private createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 21
    .parameter "ocl"
    .parameter "type"

    .prologue
    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAccountData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1604
    invoke-direct/range {p0 .. p1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->createSelectAccountDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v15

    .line 1636
    :goto_0
    return-object v15

    .line 1607
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1609
    .local v4, accountData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v16

    .line 1610
    .local v16, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_4

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v2, v11}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/EntityDelta;

    .line 1612
    .local v10, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v10}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v18

    .line 1613
    .local v18, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1610
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1614
    :cond_2
    const-string v2, "account_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1615
    .local v8, accountType:Ljava/lang/String;
    const-string v2, "data_set"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1616
    .local v9, dataSet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    invoke-virtual {v2, v8, v9}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v17

    .line 1619
    .local v17, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htccontacts/model/DataKind;

    .line 1620
    .local v13, kind:Lcom/android/htccontacts/model/DataKind;
    iget-boolean v2, v13, Lcom/android/htccontacts/model/DataKind;->editable:Z

    if-eqz v2, :cond_3

    .line 1621
    iget-object v14, v13, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1622
    .local v14, mimeType:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1623
    invoke-static {v10, v13}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAccountData:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1631
    .end local v8           #accountType:Ljava/lang/String;
    .end local v9           #dataSet:Ljava/lang/String;
    .end local v10           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v17           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v18           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0237

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v19

    new-instance v2, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContext:Landroid/content/Context;

    const v5, 0x209004b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v20, "type"

    aput-object v20, v6, v7

    const/4 v7, 0x1

    const-string v20, "name"

    aput-object v20, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v15

    .line 1636
    .local v15, selectAccountDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 1631
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x2t
        0x14t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method private enableAddMoreItem(Lcom/android/htccontacts/model/AccountType;)V
    .locals 3
    .parameter "source"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1114
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAddMore:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1116
    :cond_0
    instance-of v0, p1, Lcom/android/htccontacts/model/SimAccountType;

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAddMore:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mOther:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAddMore:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mOther:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private getRingtoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ringtoneUri"

    .prologue
    .line 967
    const/4 v0, 0x0

    return-object v0
.end method

.method private initAddMoreItem()V
    .locals 4

    .prologue
    .line 1072
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAddMore:Landroid/view/ViewGroup;

    const v3, 0x7f070051

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1073
    .local v1, label:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAddMore:Landroid/view/ViewGroup;

    const v3, 0x7f0700cc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1074
    .local v0, expand:Landroid/widget/TextView;
    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1075
    const v2, 0x7f0a01bd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1076
    return-void
.end method

.method private inserNewEmpty(Landroid/view/ViewGroup;I)V
    .locals 18
    .parameter "vg"
    .parameter "whichKindSectionViewIndex"

    .prologue
    .line 1554
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 1555
    .local v9, nChildCount:I
    const/4 v10, 0x0

    .line 1556
    .local v10, nKindSectionViewCount:I
    const/4 v12, -0x1

    .line 1557
    .local v12, nValidStateIndex:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_4

    .line 1558
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1559
    .local v15, v:Landroid/view/View;
    instance-of v0, v15, Lcom/android/htccontacts/ui/widget/KindSectionView;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1560
    add-int/lit8 v10, v10, 0x1

    move-object v7, v15

    .line 1561
    check-cast v7, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 1563
    .local v7, ksv:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v13

    .line 1564
    .local v13, size:I
    add-int/lit8 v11, v10, -0x1

    .line 1565
    .local v11, nStateIndex:I
    if-ge v11, v13, :cond_0

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta;

    .line 1567
    .local v3, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 1568
    .local v16, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v16 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1557
    .end local v3           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v7           #ksv:Lcom/android/htccontacts/ui/widget/KindSectionView;
    .end local v11           #nStateIndex:I
    .end local v13           #size:I
    .end local v16           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1569
    .restart local v3       #entity:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v7       #ksv:Lcom/android/htccontacts/ui/widget/KindSectionView;
    .restart local v11       #nStateIndex:I
    .restart local v13       #size:I
    .restart local v16       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_1
    const-string v17, "account_type"

    invoke-virtual/range {v16 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, accountType:Ljava/lang/String;
    const-string v17, "data_set"

    invoke-virtual/range {v16 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1572
    .local v2, dataSet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v14

    .line 1576
    .local v14, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v14}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/DataKind;

    .line 1577
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    iget-boolean v0, v6, Lcom/android/htccontacts/model/DataKind;->editable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1578
    iget-object v8, v6, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1579
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/htccontacts/ui/widget/KindSectionView;->getMimeType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1580
    invoke-static {v3, v6}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1581
    add-int/lit8 v12, v12, 0x1

    .line 1586
    .end local v6           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v8           #mimeType:Ljava/lang/String;
    :cond_3
    move/from16 v0, p2

    if-ne v12, v0, :cond_0

    .line 1587
    invoke-virtual {v7}, Lcom/android/htccontacts/ui/widget/KindSectionView;->insertNewEmpty()V

    .line 1593
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #ksv:Lcom/android/htccontacts/ui/widget/KindSectionView;
    .end local v11           #nStateIndex:I
    .end local v13           #size:I
    .end local v14           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v15           #v:Landroid/view/View;
    .end local v16           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    return-void
.end method

.method private obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "section"
    .parameter "accountType"
    .parameter "mimeType"

    .prologue
    .line 943
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSourceTypeEditorMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 947
    .local v0, mapper:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;>;"
    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/widget/EditorMonitor;

    .line 949
    .local v1, monitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;
    if-eqz v1, :cond_0

    .line 950
    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V

    goto :goto_0
.end method

.method private removeKindSectionView(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "vg"

    .prologue
    .line 1412
    if-nez p1, :cond_1

    .line 1418
    :cond_0
    return-void

    .line 1413
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1414
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/htccontacts/ui/widget/KindSectionView;

    if-eqz v2, :cond_2

    .line 1415
    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move v0, v1

    .line 1413
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setSecondaryVisible(Z)V
    .locals 3
    .parameter "makeVisible"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondary:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondaryHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondaryHeader:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondaryOpen:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 503
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondaryClosed:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setupAddView(Landroid/view/View;)V
    .locals 2
    .parameter "mView"

    .prologue
    .line 298
    const v1, 0x7f070032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 300
    .local v0, addItem:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v0, :cond_0

    .line 301
    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 303
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 305
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const v2, 0x2020010

    .line 308
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    .line 312
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 313
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 315
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    .line 316
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 317
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 318
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    .line 319
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEmail:Landroid/view/ViewGroup;

    .line 324
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEmail:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEmail:Landroid/view/ViewGroup;

    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 326
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerSipAddress:Landroid/view/ViewGroup;

    .line 334
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerSipAddress:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a039b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerSipAddress:Landroid/view/ViewGroup;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 336
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewSipAddressAdd:Landroid/view/View;

    .line 337
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewSipAddressAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewSipAddressAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    .line 343
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerGroup:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 345
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerGroup:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const v0, 0x7f0700ab

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEvent:Landroid/view/ViewGroup;

    .line 349
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEvent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEvent:Landroid/view/ViewGroup;

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 351
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerIm:Landroid/view/ViewGroup;

    .line 357
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerIm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 358
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerIm:Landroid/view/ViewGroup;

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 359
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 361
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPostal:Landroid/view/ViewGroup;

    .line 365
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPostal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPostal:Landroid/view/ViewGroup;

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 367
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerOrganization:Landroid/view/ViewGroup;

    .line 373
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerOrganization:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 374
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerOrganization:Landroid/view/ViewGroup;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 375
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    .line 376
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNote:Landroid/view/ViewGroup;

    .line 381
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNote:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0156

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNote:Landroid/view/ViewGroup;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 383
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const v0, 0x7f0700bf

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNickname:Landroid/view/ViewGroup;

    .line 389
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNickname:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 390
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNickname:Landroid/view/ViewGroup;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 391
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    .line 392
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const v0, 0x7f0700c3

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerWebsite:Landroid/view/ViewGroup;

    .line 397
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerWebsite:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerWebsite:Landroid/view/ViewGroup;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 399
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    .line 400
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupAddView(Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    return-void
.end method


# virtual methods
.method public disableChangeAccountItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1055
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1056
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->removeView(Landroid/view/View;)V

    .line 1057
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1059
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    .local v0, buttonVIew:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1064
    :cond_0
    iput-object v3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    .line 1066
    .end local v0           #buttonVIew:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public enableChangeAccountItem(Landroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1019
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    .line 1024
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030042

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    .line 1025
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1026
    .local v0, buttonVIew:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    .end local v0           #buttonVIew:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->removeView(Landroid/view/View;)V

    .line 1035
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerContactType:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 1036
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1039
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 1040
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1041
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1042
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerContactType:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1043
    const v2, 0x208066a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1047
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1050
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 1052
    .end local v1           #view:Landroid/view/View;
    :cond_3
    return-void

    .line 1045
    .restart local v1       #view:Landroid/view/View;
    :cond_4
    const v2, 0x208066b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getAppendNewGroupTitleLists(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1405
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhotoEditor()Lcom/android/htccontacts/ui/widget/PhotoEditorView;
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPhotoEditor()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public insertMonitor(Ljava/lang/String;Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;)V
    .locals 2
    .parameter "accountType"
    .parameter "dataType"
    .parameter "monitor"

    .prologue
    .line 1642
    const/4 v0, 0x0

    .line 1643
    .local v0, mapper:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;>;"
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSourceTypeEditorMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1644
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #mapper:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1645
    .restart local v0       #mapper:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;>;"
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSourceTypeEditorMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    return-void

    .line 1648
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSourceTypeEditorMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mapper:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;>;"
    check-cast v0, Ljava/util/HashMap;

    .restart local v0       #mapper:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;>;"
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 491
    :goto_0
    return-void

    .line 460
    :sswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addPhone()V

    goto :goto_0

    .line 463
    :sswitch_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addEmail()V

    goto :goto_0

    .line 466
    :sswitch_2
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addEvent()V

    goto :goto_0

    .line 469
    :sswitch_3
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addIm()V

    goto :goto_0

    .line 472
    :sswitch_4
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addPostal()V

    goto :goto_0

    .line 475
    :sswitch_5
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addOrganization()V

    goto :goto_0

    .line 478
    :sswitch_6
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addNote()V

    goto :goto_0

    .line 481
    :sswitch_7
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addNickname()V

    goto :goto_0

    .line 484
    :sswitch_8
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addWebsite()V

    goto :goto_0

    .line 488
    :sswitch_9
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addSipAddress()V

    goto :goto_0

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x7f07009f -> :sswitch_0
        0x7f0700a3 -> :sswitch_1
        0x7f0700a7 -> :sswitch_9
        0x7f0700ae -> :sswitch_2
        0x7f0700b2 -> :sswitch_3
        0x7f0700b6 -> :sswitch_4
        0x7f0700ba -> :sswitch_5
        0x7f0700be -> :sswitch_6
        0x7f0700c2 -> :sswitch_7
        0x7f0700c6 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 239
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    .line 244
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 246
    .local v0, photoSize:I
    const v2, 0x7f07008f

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mReadOnly:Landroid/widget/TextView;

    .line 252
    const v2, 0x7f070092

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGeneral:Landroid/view/ViewGroup;

    .line 260
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 261
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x108026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondaryOpen:Landroid/graphics/drawable/Drawable;

    .line 262
    const v2, 0x108026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondaryClosed:Landroid/graphics/drawable/Drawable;

    .line 294
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setupViews()V

    .line 295
    return-void
.end method

.method public onUpdate(Lcom/android/htccontacts/model/DataKind;)V
    .locals 14
    .parameter "updateKind"

    .prologue
    .line 1346
    iget-object v10, p1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1349
    .local v10, updateMimeType:Ljava/lang/String;
    const/4 v1, 0x1

    .line 1350
    .local v1, bHideAdd:Z
    iget-object v12, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v12}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v8

    .line 1351
    .local v8, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_3

    .line 1352
    iget-object v12, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v12, v4}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta;

    .line 1353
    .local v3, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v11

    .line 1354
    .local v11, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1351
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1355
    :cond_1
    const-string v12, "account_type"

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, accountType:Ljava/lang/String;
    const-string v12, "data_set"

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1357
    .local v2, dataSet:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    invoke-virtual {v12, v0, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v9

    .line 1360
    .local v9, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v9}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/DataKind;

    .line 1361
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    iget-boolean v12, v6, Lcom/android/htccontacts/model/DataKind;->editable:Z

    if-eqz v12, :cond_2

    .line 1362
    iget-object v7, v6, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1363
    .local v7, mimeType:Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1364
    invoke-static {v3, v6}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1365
    const/4 v1, 0x0

    .line 1366
    goto :goto_1

    .line 1373
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v9           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v11           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const-string v12, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1374
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    if-eqz v1, :cond_5

    const/16 v12, 0x8

    :goto_2
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->requestRequestLastInsertItem()V

    .line 1396
    return-void

    .line 1374
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 1375
    :cond_6
    const-string v12, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1376
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    if-eqz v1, :cond_7

    const/16 v12, 0x8

    :goto_4
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 1377
    :cond_8
    const-string v12, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1378
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    if-eqz v1, :cond_9

    const/16 v12, 0x8

    :goto_5
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 1379
    :cond_a
    const-string v12, "vnd.android.cursor.item/im"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1380
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    if-eqz v1, :cond_b

    const/16 v12, 0x8

    :goto_6
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_b
    const/4 v12, 0x0

    goto :goto_6

    .line 1381
    :cond_c
    const-string v12, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1382
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    if-eqz v1, :cond_d

    const/16 v12, 0x8

    :goto_7
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_d
    const/4 v12, 0x0

    goto :goto_7

    .line 1383
    :cond_e
    const-string v12, "vnd.android.cursor.item/organization"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1384
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    if-eqz v1, :cond_f

    const/16 v12, 0x8

    :goto_8
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_f
    const/4 v12, 0x0

    goto :goto_8

    .line 1385
    :cond_10
    const-string v12, "vnd.android.cursor.item/note"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1386
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    if-eqz v1, :cond_11

    const/16 v12, 0x8

    :goto_9
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_11
    const/4 v12, 0x0

    goto :goto_9

    .line 1387
    :cond_12
    const-string v12, "vnd.android.cursor.item/nickname"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1388
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    if-eqz v1, :cond_13

    const/16 v12, 0x8

    :goto_a
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_13
    const/4 v12, 0x0

    goto :goto_a

    .line 1389
    :cond_14
    const-string v12, "vnd.android.cursor.item/website"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1390
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    if-eqz v1, :cond_15

    const/16 v12, 0x8

    :goto_b
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_15
    const/4 v12, 0x0

    goto :goto_b

    .line 1391
    :cond_16
    const-string v12, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1392
    iget-object v13, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewSipAddressAdd:Landroid/view/View;

    if-eqz v1, :cond_17

    const/16 v12, 0x8

    :goto_c
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_17
    const/4 v12, 0x0

    goto :goto_c
.end method

.method public requestRequestLastInsertItem()V
    .locals 11

    .prologue
    .line 1080
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1081
    .local v6, size:I
    const/4 v5, 0x0

    .line 1083
    .local v5, lastView:Lcom/android/htccontacts/ui/widget/EditorElement;
    const-wide/16 v3, 0x0

    .line 1084
    .local v3, lastTime:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 1085
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindContainerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1086
    .local v8, view:Landroid/view/View;
    instance-of v9, v8, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    if-eqz v9, :cond_0

    .line 1087
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 1084
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v8

    .line 1090
    check-cast v2, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    .line 1092
    .local v2, kindGroupView:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    invoke-virtual {v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getLastInsertedElement()Landroid/view/View;

    move-result-object v0

    .line 1095
    .local v0, element:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;

    .line 1100
    .local v7, tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    if-eqz v7, :cond_0

    iget-wide v9, v7, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->mNewInsertTime:J

    cmp-long v9, v9, v3

    if-lez v9, :cond_0

    .line 1101
    instance-of v9, v0, Lcom/android/htccontacts/ui/widget/EditorElement;

    if-eqz v9, :cond_0

    .line 1102
    iget-wide v3, v7, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->mNewInsertTime:J

    move-object v5, v0

    .line 1103
    check-cast v5, Lcom/android/htccontacts/ui/widget/EditorElement;

    goto :goto_1

    .line 1108
    .end local v0           #element:Landroid/view/View;
    .end local v2           #kindGroupView:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    .end local v7           #tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    .end local v8           #view:Landroid/view/View;
    :cond_2
    if-eqz v5, :cond_3

    .line 1109
    invoke-interface {v5}, Lcom/android/htccontacts/ui/widget/EditorElement;->requestFocusEditableView()V

    .line 1111
    :cond_3
    return-void
.end method

.method public resetMonitors()V
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSourceTypeEditorMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1656
    return-void
.end method

.method public setAppendedNewGroupTitleLists(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1399
    .local p1, listNewAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;

    .line 1400
    return-void
.end method

.method public setChangeAccountItemText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1014
    .local v0, TextView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    .end local v0           #TextView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setGroupMemberAction(Landroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 979
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 980
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 981
    .local v2, v:Lcom/android/htccontacts/ui/widget/KindSectionView;
    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 982
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 983
    check-cast v0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    .line 984
    .local v0, dropview:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setOnActionListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 988
    .end local v0           #dropview:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #v:Lcom/android/htccontacts/ui/widget/KindSectionView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setGroupMemberState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 5
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 998
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 999
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 1000
    .local v2, v:Lcom/android/htccontacts/ui/widget/KindSectionView;
    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1001
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 1002
    check-cast v0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    .line 1003
    .local v0, dropview:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->getState()Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v4

    if-ne p2, v4, :cond_0

    .line 1004
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, p2}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    goto :goto_0

    .line 1009
    .end local v0           #dropview:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #v:Lcom/android/htccontacts/ui/widget/KindSectionView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 431
    return-void
.end method

.method public setRingtoneUri(Ljava/lang/String;)V
    .locals 5
    .parameter "ringtoneUri"

    .prologue
    .line 956
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mRingtoneKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    if-eqz v3, :cond_0

    .line 957
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mRingtoneKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    const-string v4, "custom_minetype"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 958
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 959
    check-cast v1, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    .line 960
    .local v1, dropview:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getRingtoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setDisplayText(Ljava/lang/CharSequence;)V

    .line 964
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #dropview:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/ContactsSource;)V
    .locals 13
    .parameter "state"
    .parameter "source"

    .prologue
    const/4 v9, 0x0

    const v12, 0x7f030049

    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 513
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 514
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSecondary:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 515
    iput-object v9, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mRingtoneKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 516
    iput-object v9, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 517
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindViewMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 520
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v7, "vnd.android.cursor.item/name"

    invoke-static {p1, p2, v7}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 528
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-static {p1, p2, v7}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 532
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v7}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 533
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v7}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 535
    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-static {p1, p2, v7}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 538
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-virtual {p2, v7}, Lcom/android/htccontacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mHasPhotoEditor:Z

    .line 542
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mReadOnly:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGeneral:Landroid/view/ViewGroup;

    .line 547
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {p2}, Lcom/android/htccontacts/model/ContactsSource;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/DataKind;

    .line 549
    .local v1, kind:Lcom/android/htccontacts/model/DataKind;
    iget-boolean v7, v1, Lcom/android/htccontacts/model/DataKind;->editable:Z

    if-eqz v7, :cond_2

    .line 552
    iget-object v2, v1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 555
    .local v2, mimeType:Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 557
    invoke-virtual {p1, v2}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v4           #parent:Landroid/view/ViewGroup;
    :cond_3
    move v7, v8

    .line 538
    goto :goto_1

    .line 559
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #kind:Lcom/android/htccontacts/model/DataKind;
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local v4       #parent:Landroid/view/ViewGroup;
    :cond_4
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 561
    invoke-virtual {p1, v2}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto :goto_2

    .line 565
    :cond_5
    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 567
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v12, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/ui/widget/KindSectionView;

    iput-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 569
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    new-instance v9, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;

    invoke-direct {v9, p0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    invoke-virtual {v7, v9}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEditorItemDisplay(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V

    .line 572
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    invoke-virtual {v7, v1, p1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 573
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    iget v9, v1, Lcom/android/htccontacts/model/DataKind;->weight:I

    invoke-virtual {v7, v9}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 574
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 575
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindViewMap:Ljava/util/HashMap;

    const-string v9, "vnd.android.cursor.item/group_membership"

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 577
    :cond_6
    const-string v7, "custom_minetype"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 593
    iget-object v7, v1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 597
    iget-object v7, v1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 599
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v12, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 602
    .local v5, section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindViewMap:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mEditorMonitorMap:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/widget/EditorMonitor;

    .line 604
    .local v3, monitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;
    if-eqz v3, :cond_7

    .line 605
    invoke-virtual {v5, v3}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V

    .line 607
    :cond_7
    invoke-virtual {v5, v1, p1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 608
    iget v7, v1, Lcom/android/htccontacts/model/DataKind;->weight:I

    invoke-virtual {v5, v7}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 609
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 613
    .end local v1           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #monitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;
    .end local v5           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->enableAddMoreItem(Lcom/android/htccontacts/model/AccountType;)V

    .line 616
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 617
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAddMore:Landroid/view/ViewGroup;

    const v9, 0x7f070096

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 618
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_9

    .line 619
    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 623
    .end local v6           #v:Landroid/view/View;
    :cond_9
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    if-eqz v7, :cond_b

    .line 624
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    if-ne v7, v9, :cond_a

    .line 625
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGeneral:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 627
    :cond_a
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGeneral:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mChangeAccountView:Landroid/view/View;

    invoke-virtual {v7, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 631
    :cond_b
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 632
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    if-eqz v7, :cond_0

    .line 633
    iget-object v7, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionView:Lcom/android/htccontacts/ui/widget/KindSectionView;

    invoke-virtual {v7, v11}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setState(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V
    .locals 35
    .parameter "states"
    .parameter "sources"

    .prologue
    .line 639
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    if-eqz p2, :cond_0

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 646
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerGroup:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->removeKindSectionView(Landroid/view/ViewGroup;)V

    .line 660
    const/4 v13, 0x0

    .line 661
    .local v13, bSupportPhone:Z
    const/4 v6, 0x0

    .line 662
    .local v6, bSupportEmail:Z
    const/4 v8, 0x0

    .line 663
    .local v8, bSupportGroup:Z
    const/4 v7, 0x0

    .line 664
    .local v7, bSupportEvent:Z
    const/4 v9, 0x0

    .line 665
    .local v9, bSupportIm:Z
    const/4 v14, 0x0

    .line 666
    .local v14, bSupportPostal:Z
    const/4 v12, 0x0

    .line 667
    .local v12, bSupportOrganization:Z
    const/4 v11, 0x0

    .line 668
    .local v11, bSupportNote:Z
    const/4 v10, 0x0

    .line 669
    .local v10, bSupportNickname:Z
    const/16 v16, 0x0

    .line 670
    .local v16, bSupportWebsite:Z
    const/4 v15, 0x0

    .line 673
    .local v15, bSupportSipAddress:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAccountData:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 674
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v30

    .line 676
    .local v30, size:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/htccontacts/model/EntityDelta;

    .line 678
    .local v19, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v19 .. v19}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v31

    .line 679
    .local v31, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v31 .. v31}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v32

    if-nez v32, :cond_3

    .line 676
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 680
    :cond_3
    const-string v32, "account_type"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, accountType:Ljava/lang/String;
    const-string v32, "data_set"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 683
    .local v18, dataSet:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v5

    .line 687
    .local v5, accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    const-string v32, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-static {v0, v5, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 688
    const-string v32, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-static {v0, v5, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 690
    const-string v32, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-static {v0, v5, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 692
    const/16 v27, 0x0

    .line 693
    .local v27, sDisplayName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/htccontacts/model/DataKind;

    .line 694
    .local v22, kind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 695
    .local v24, mimeType:Ljava/lang/String;
    const-string v32, "vnd.android.cursor.item/name"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 697
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v26

    .line 698
    .local v26, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v26, :cond_4

    .line 702
    const-string v32, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 708
    .end local v22           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v24           #mimeType:Ljava/lang/String;
    .end local v26           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 709
    .local v17, csDisplayLabel:Ljava/lang/CharSequence;
    const/16 v28, 0x0

    .line 710
    .local v28, sDisplayTitle:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 711
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 713
    :cond_6
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_7

    .line 714
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " - "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 717
    :cond_7
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 718
    .local v23, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v32, "type"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v32, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mAccountData:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-virtual {v5}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/htccontacts/model/DataKind;

    .line 726
    .restart local v22       #kind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/htccontacts/model/DataKind;->editable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 728
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 731
    .restart local v24       #mimeType:Ljava/lang/String;
    const-string v32, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 732
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPhone:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 734
    .local v25, parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 736
    .local v29, section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPhoneAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 737
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 739
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 740
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 741
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 742
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 743
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 745
    :cond_9
    const/4 v13, 0x1

    .line 746
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_a
    const-string v32, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 747
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEmail:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 749
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 751
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEmailAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 752
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 755
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 756
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 757
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 758
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 759
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 761
    :cond_b
    const/4 v6, 0x1

    .line 762
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_c
    const-string v32, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerGroup:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 775
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 777
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 778
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    new-instance v32, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEditorItemDisplay(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V

    .line 781
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 782
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 783
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 784
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 785
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 787
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupMemberKindSectionViews:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    const/4 v8, 0x1

    .line 789
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_e
    const-string v32, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 790
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerEvent:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 792
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 794
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewEventAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 795
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 797
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 798
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 799
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 800
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 801
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 803
    :cond_f
    const/4 v7, 0x1

    .line 804
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_10
    const-string v32, "vnd.android.cursor.item/im"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 805
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerIm:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 807
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 809
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewImAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 810
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 812
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 813
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 814
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 815
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 816
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 818
    :cond_11
    const/4 v9, 0x1

    .line 819
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_12
    const-string v32, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 820
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerPostal:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 822
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 824
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewPostalAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 825
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 827
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 828
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 829
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 830
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 831
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 833
    :cond_13
    const/4 v14, 0x1

    .line 834
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_14
    const-string v32, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 835
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerOrganization:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 837
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 839
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewOrganizationAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 840
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 842
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 843
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 844
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 845
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    .line 846
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 848
    :cond_15
    const/4 v12, 0x1

    .line 849
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_16
    const-string v32, "vnd.android.cursor.item/note"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 850
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNote:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 852
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 854
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNoteAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 855
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 858
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 859
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 860
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 861
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 862
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 864
    :cond_17
    const/4 v11, 0x1

    .line 865
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_18
    const-string v32, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 866
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 868
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 870
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewNicknameAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 871
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 873
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 874
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 875
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 876
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 877
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 879
    :cond_19
    const/4 v10, 0x1

    .line 880
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_1a
    const-string v32, "vnd.android.cursor.item/website"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 881
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 882
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v33, 0xda

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v33, 0x1b

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerWebsite:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 887
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 889
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewWebsiteAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 892
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 893
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 894
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 895
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 896
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 898
    :cond_1b
    const/16 v16, 0x1

    .line 899
    goto/16 :goto_3

    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_1c
    const-string v32, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 900
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isTmiProject()Z

    move-result v32

    if-nez v32, :cond_8

    .line 901
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerSipAddress:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-object/from16 v25, v0

    .line 903
    .restart local v25       #parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030049

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 905
    .restart local v29       #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mviewSipAddressAdd:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->addView(Landroid/view/View;I)V

    .line 906
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->obtainAndSetMonitor(Lcom/android/htccontacts/ui/widget/KindSectionView;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V

    .line 908
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 909
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->weight:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setId(I)V

    .line 910
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setTitle(Ljava/lang/String;)V

    .line 911
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    .line 912
    invoke-virtual/range {v29 .. v29}, Lcom/android/htccontacts/ui/widget/KindSectionView;->hideTitle()V

    .line 914
    :cond_1d
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 920
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    .end local v17           #csDisplayLabel:Ljava/lang/CharSequence;
    .end local v18           #dataSet:Ljava/lang/String;
    .end local v19           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v23           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24           #mimeType:Ljava/lang/String;
    .end local v25           #parent:Landroid/view/ViewGroup;
    .end local v27           #sDisplayName:Ljava/lang/String;
    .end local v28           #sDisplayTitle:Ljava/lang/String;
    .end local v29           #section:Lcom/android/htccontacts/ui/widget/KindSectionView;
    .end local v31           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPhone:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v13, :cond_1f

    const/16 v32, 0x0

    :goto_4
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEmail:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v6, :cond_20

    const/16 v32, 0x0

    :goto_5
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v8, :cond_21

    const/16 v32, 0x0

    :goto_6
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerEvent:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v7, :cond_22

    const/16 v32, 0x0

    :goto_7
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerIm:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v9, :cond_23

    const/16 v32, 0x0

    :goto_8
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerPostal:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v14, :cond_24

    const/16 v32, 0x0

    :goto_9
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerOrganization:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v12, :cond_25

    const/16 v32, 0x0

    :goto_a
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNote:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v11, :cond_26

    const/16 v32, 0x0

    :goto_b
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerNickname:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v10, :cond_27

    const/16 v32, 0x0

    :goto_c
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerWebsite:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v16, :cond_28

    const/16 v32, 0x0

    :goto_d
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 931
    sget-object v32, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "######################## bSupportSipAddress ? "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerSipAddress:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    if-eqz v15, :cond_29

    const/16 v32, 0x0

    :goto_e
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 935
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mContainerGroup:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 920
    :cond_1f
    const/16 v32, 0x8

    goto/16 :goto_4

    .line 921
    :cond_20
    const/16 v32, 0x8

    goto/16 :goto_5

    .line 922
    :cond_21
    const/16 v32, 0x8

    goto/16 :goto_6

    .line 923
    :cond_22
    const/16 v32, 0x8

    goto/16 :goto_7

    .line 924
    :cond_23
    const/16 v32, 0x8

    goto/16 :goto_8

    .line 925
    :cond_24
    const/16 v32, 0x8

    goto/16 :goto_9

    .line 926
    :cond_25
    const/16 v32, 0x8

    goto/16 :goto_a

    .line 927
    :cond_26
    const/16 v32, 0x8

    goto/16 :goto_b

    .line 928
    :cond_27
    const/16 v32, 0x8

    goto :goto_c

    .line 929
    :cond_28
    const/16 v32, 0x8

    goto :goto_d

    .line 932
    :cond_29
    const/16 v32, 0x8

    goto :goto_e
.end method
