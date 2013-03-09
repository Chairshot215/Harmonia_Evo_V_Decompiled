.class public interface abstract Lcom/google/android/finsky/api/DfeApi;
.super Ljava/lang/Object;
.source "DfeApi.java"


# static fields
.field public static final ACCEPT_TOS_URI:Landroid/net/Uri;

.field public static final ACK_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final ADDREVIEW_URI:Landroid/net/Uri;

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final BESPOKE:Landroid/net/Uri;

.field public static final BROWSE_URI:Landroid/net/Uri;

.field public static final BULK_DETAILS_URI:Landroid/net/Uri;

.field public static final CHANNELS_URI:Landroid/net/Uri;

.field public static final CHECK_INSTRUMENT_URI:Landroid/net/Uri;

.field public static final CHECK_PROMO_OFFER_URI:Landroid/net/Uri;

.field public static final COMPLETE_PURCHASE_URI:Landroid/net/Uri;

.field public static final CONSUME_PURCHASE_URI:Landroid/net/Uri;

.field public static final DCB_INITIATE_ASSOCIATION_URI:Landroid/net/Uri;

.field public static final DCB_VERIFY_ASSOCIATION_URI:Landroid/net/Uri;

.field public static final DELETEREVIEW_URI:Landroid/net/Uri;

.field public static final DELIVERY_URI:Landroid/net/Uri;

.field public static final FLAG_CONTENT_URI:Landroid/net/Uri;

.field public static final GET_PLUS_PROFILE_URI:Landroid/net/Uri;

.field public static final GTFO:Landroid/net/Uri;

.field public static final INSTRUMENT_SETUP_INFO_URI:Landroid/net/Uri;

.field public static final LIBRARY_URI:Landroid/net/Uri;

.field public static final LOG_URI:Landroid/net/Uri;

.field public static final MODIFY_LIBRARY_URI:Landroid/net/Uri;

.field public static final PLUSONE_URI:Landroid/net/Uri;

.field public static final PURCHASE_URI:Landroid/net/Uri;

.field public static final RATEREVIEW_URI:Landroid/net/Uri;

.field public static final REDEEM_GIFT_CARD_URI:Landroid/net/Uri;

.field public static final REPLICATE_LIBRARY_URI:Landroid/net/Uri;

.field public static final RESOLVE_LINK:Landroid/net/Uri;

.field public static final REVOKE_URI:Landroid/net/Uri;

.field public static final SEARCH_CHANNEL_URI:Landroid/net/Uri;

.field public static final UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

.field public static final UPLOAD_DEVICE_CONFIG:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "https://android.clients.google.com/fdfe/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    .line 69
    const-string v0, "toc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->CHANNELS_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "browse"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->BROWSE_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->SEARCH_CHANNEL_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "addReview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->ADDREVIEW_URI:Landroid/net/Uri;

    .line 81
    const-string v0, "deleteReview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->DELETEREVIEW_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "rateReview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->RATEREVIEW_URI:Landroid/net/Uri;

    .line 87
    const-string v0, "purchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_URI:Landroid/net/Uri;

    .line 90
    const-string v0, "completePurchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->COMPLETE_PURCHASE_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "revoke"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->REVOKE_URI:Landroid/net/Uri;

    .line 96
    const-string v0, "updateInstrument"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

    .line 99
    const-string v0, "checkInstrument"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->CHECK_INSTRUMENT_URI:Landroid/net/Uri;

    .line 102
    const-string v0, "checkPromoOffer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->CHECK_PROMO_OFFER_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->LOG_URI:Landroid/net/Uri;

    .line 108
    const-string v0, "flagContent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->FLAG_CONTENT_URI:Landroid/net/Uri;

    .line 111
    const-string v0, "plusOne"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->PLUSONE_URI:Landroid/net/Uri;

    .line 114
    const-string v0, "ack"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->ACK_NOTIFICATION_URI:Landroid/net/Uri;

    .line 117
    const-string v0, "acceptTos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->ACCEPT_TOS_URI:Landroid/net/Uri;

    .line 120
    const-string v0, "library"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->LIBRARY_URI:Landroid/net/Uri;

    .line 123
    const-string v0, "bulkDetails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->BULK_DETAILS_URI:Landroid/net/Uri;

    .line 126
    const-string v0, "resolveLink"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->RESOLVE_LINK:Landroid/net/Uri;

    .line 129
    const-string v0, "bespoke"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->BESPOKE:Landroid/net/Uri;

    .line 132
    const-string v0, "gtfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->GTFO:Landroid/net/Uri;

    .line 135
    const-string v0, "dcbInitiateAssociation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->DCB_INITIATE_ASSOCIATION_URI:Landroid/net/Uri;

    .line 138
    const-string v0, "dcbVerifyAssociation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->DCB_VERIFY_ASSOCIATION_URI:Landroid/net/Uri;

    .line 141
    const-string v0, "replicateLibrary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->REPLICATE_LIBRARY_URI:Landroid/net/Uri;

    .line 144
    const-string v0, "delivery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->DELIVERY_URI:Landroid/net/Uri;

    .line 147
    const-string v0, "redeemGiftCard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->REDEEM_GIFT_CARD_URI:Landroid/net/Uri;

    .line 150
    const-string v0, "instrumentSetupInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->INSTRUMENT_SETUP_INFO_URI:Landroid/net/Uri;

    .line 153
    const-string v0, "modifyLibrary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    .line 156
    const-string v0, "consumePurchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->CONSUME_PURCHASE_URI:Landroid/net/Uri;

    .line 159
    const-string v0, "plusProfile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->GET_PLUS_PROFILE_URI:Landroid/net/Uri;

    .line 162
    const-string v0, "uploadDeviceConfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->UPLOAD_DEVICE_CONFIG:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract acceptTos(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract ackNotification(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract addToLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract archiveFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract checkInstrument(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract checkPromoOffers(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract completePurchase(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract consumePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract deleteReview(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract flagContent(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getAccount()Landroid/accounts/Account;
.end method

.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getApiContext()Lcom/google/android/finsky/api/DfeApiContext;
.end method

.method public abstract getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;
.end method

.method public abstract getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getRecommendations(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getReviews(Ljava/lang/String;ZIIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIII",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Z)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract instrumentSetupInfo(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract invalidateDetailsCache(Ljava/lang/String;Z)V
.end method

.method public abstract invalidateListCache(Ljava/lang/String;Z)V
.end method

.method public abstract invalidatePlusProfile(Z)V
.end method

.method public abstract invalidateRecommendationsCache(I)V
.end method

.method public abstract invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V
.end method

.method public abstract log(Lcom/google/android/finsky/remoting/protos/Log$LogRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Log$LogRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Log$LogResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract rateReview(Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract redeemGiftCard(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract removeFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract replicateLibrary(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RevokeResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract uploadDeviceConfig(Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract verifyAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method
